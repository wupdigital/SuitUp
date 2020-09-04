//
//  SuitUp.swift
//  SuitUp
//
//  Created by Dávid Széles-Szép on 2020. 08. 31..
//  Copyright © 2020. W.UP. All rights reserved.
//

import Foundation

public class SuitUp {

    // MARK: - Shared instance
    public static let shared = SuitUp()
    private init() {}
    
    // MARK: - Properties
    public var logLevel: LogLevel = .info
    public private(set) var availableThemes = [String: Theme]()
    public private(set) var currentTheme: Theme?
    
    // MARK: - Theme handling
    public func registerThemes(_ themes: Theme...) {
        availableThemes.removeAll()
        guard themes.count > 0 else {
            fatalError("SuitUp ERROR - Themes have not registered correctly, because you wanted to register an empty list!")
        }
        
        for theme in themes {
            availableThemes[theme.identifier] = theme
        }
        currentTheme = themes.first
    }
    
    public func changeTheme(to identifier: String) {
        guard let nextTheme = availableThemes[identifier] else {
            print("SuitUp WARNING - Change theme has failed, because theme with the given identifier '\(identifier)' is not available through the registered themes!")
            return
        }
        
        currentTheme = nextTheme
    }
    
    // MARK: - Property list handling
    func propertyMap(from object: NSObject) -> [String : Any] {
        let classes = classLadder(from: object)
        var map = [String : Any]()
        
        for clazz in classes {
            var propertyListCount: UInt32 = 0
            let propertyListInAClass = class_copyPropertyList(clazz, &propertyListCount)
            
            for i in 0 ..< Int(propertyListCount) {
                if let property = propertyListInAClass?[i],
                    let key = NSString(utf8String: property_getName(property)) as String? {
                    map[key] = object.value(forKey: key)
                }
            }
            
            free(propertyListInAClass)
        }
        
        return map
    }
    
    func classLadder(from object: NSObject) -> [AnyClass] {
        var classes = [AnyClass]()
        
        var currentClass: AnyClass = object.classForCoder
        while currentClass != NSObject.classForCoder() {
            classes.insert(currentClass, at: 0)
            
            if let superClass = currentClass.superclass() {
                currentClass = superClass
            } else {
                break
            }
        }
        
        return classes
    }
    
    // MARK: - Logging
    func logStyle(_ style: NSObject, propertyMap: [String : Any]) {
        guard SuitUp.shared.logLevel == .info else { return }
        
        let setMessage = "SuitUp tries to set style named '\(style.classForCoder)' on \(String(describing: type(of: self)))."
        let styleMessage = "Style: \(propertyMap as AnyObject)"
        print("\(setMessage)\n\(styleMessage)")
    }
}
