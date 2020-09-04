//
//  Button+Stylable.swift
//  SuitUpExample
//
//  Created by Dávid Széles-Szép on 2020. 09. 01..
//  Copyright © 2020. W.UP. All rights reserved.
//

import UIKit

@objc
extension UIButton {
    
    var normalTitleColor: UIColor? {
        get { titleColor(for: .normal) }
        set { setTitleColor(newValue, for: .normal) }
    }
    
    var titleFont: UIFont? {
        get { titleLabel?.font }
        set { titleLabel?.font = newValue }
    }
}
