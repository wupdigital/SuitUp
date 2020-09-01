//
//  ViewController.swift
//  FreestylerExample
//
//  Created by Dávid Szép on 2020. 08. 31..
//  Copyright © 2020. W.UP. All rights reserved.
//

import UIKit
import Freestyler

final class ViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet private weak var primaryView: UIView!
    @IBOutlet private weak var secondaryView: UIView!
    @IBOutlet private weak var tertiaryView: UIView!
    @IBOutlet private weak var changeThemeButton: UIButton!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        refreshStyles()
        refreshChangeThemeButtonTitle()
    }
    
    @IBAction private func changeTheme() {
        switch Freestyler.shared.currentTheme?.identifier {
        case ThemeIdentifier.sunrise.rawValue:
            Freestyler.shared.changeTheme(to: ThemeIdentifier.sunset.rawValue)
        case ThemeIdentifier.sunset.rawValue:
            Freestyler.shared.changeTheme(to: ThemeIdentifier.sunrise.rawValue)
        default:
            break
        }
        
        refreshChangeThemeButtonTitle()
        UIView.animate(withDuration: 0.3) {
            self.refreshStyles()
        }
    }
    
    private func refreshStyles() {
        primaryView.apply(style: PrimaryViewStyle())
        secondaryView.apply(style: SecondaryViewStyle())
        tertiaryView.apply(style: TertiaryViewStyle())
        
        changeThemeButton.apply(style: ButtonStyle())
    }
    
    private func refreshChangeThemeButtonTitle() {
        let themeName: String
        
        switch Freestyler.shared.currentTheme?.identifier {
        case ThemeIdentifier.sunrise.rawValue:
            themeName = ThemeIdentifier.sunset.rawValue
        case ThemeIdentifier.sunset.rawValue:
            themeName = ThemeIdentifier.sunrise.rawValue
        default:
            themeName = ""
            break
        }

        changeThemeButton.setTitle("Let's see the \(themeName)!", for: .normal)
    }
}

