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
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var bodyLabel: UILabel!
    @IBOutlet private weak var secondaryView: UIView!
    @IBOutlet private weak var tertiaryView: TertiaryView!
    @IBOutlet private weak var changeThemeButton: UIButton!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bodyLabel.numberOfLines = 0
        refreshStyles()
        refreshTexts()
        refreshChangeThemeButtonTitle()
    }
    
    // MARK: - Actions
    @IBAction private func changeTheme() {
        switch Freestyler.shared.currentTheme?.identifier {
        case ThemeIdentifier.sunrise.rawValue:
            Freestyler.shared.changeTheme(to: ThemeIdentifier.sunset.rawValue)
        case ThemeIdentifier.sunset.rawValue:
            Freestyler.shared.changeTheme(to: ThemeIdentifier.sunrise.rawValue)
        default:
            break
        }
        
        refreshTexts()
        refreshChangeThemeButtonTitle()
        UIView.animate(withDuration: 0.3) {
            self.refreshStyles()
        }
    }
}

// MARK: - Private
private extension ViewController {
    
    private func refreshStyles() {
        primaryView.apply(style: PrimaryViewStyle())
        secondaryView.apply(style: SecondaryViewStyle())
        tertiaryView.apply(style: TertiaryViewStyle())
        
        titleLabel.apply(style: TitleLabelStyle())
        bodyLabel.apply(style: BodyLabelStyle())
        changeThemeButton.apply(style: ButtonStyle())
    }
    
    private func refreshTexts() {
        let title = Freestyler.shared.currentTheme?.identifier ?? ""
        titleLabel.text = title.prefix(1).capitalized + title.dropFirst()
        
        switch Freestyler.shared.currentTheme?.identifier {
        case ThemeIdentifier.sunrise.rawValue:
            bodyLabel.text = "Sunrise (or sunup) is the moment when the upper limb of the Sun appears on the horizon in the morning.\nThe term can also refer to the entire process of the solar disk crossing the horizon and its accompanying atmospheric effects."
        case ThemeIdentifier.sunset.rawValue:
            bodyLabel.text = "Sunset, also known as sundown, is the daily disappearance of the Sun below the horizon due to Earth's rotation.\nAs viewed from the Equator, the equinox Sun sets exactly due west in both Spring and Autumn. As viewed from the middle latitudes, the local summer Sun sets to the northwest for the Northern Hemisphere, but to the southwest for the Southern Hemisphere."
        default:
            break
        }
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
