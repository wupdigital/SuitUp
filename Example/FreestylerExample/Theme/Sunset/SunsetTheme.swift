//
//  SunsetTheme.swift
//  FreestylerExample
//
//  Created by Dávid Széles-Szép on 2020. 09. 01..
//  Copyright © 2020. W.UP. All rights reserved.
//

import Foundation
import Freestyler

struct SunsetTheme: Theme {
    let identifier: String = ThemeIdentifier.sunset.rawValue
    
    let colors: Colors = SunsetColors()
    let fonts: Fonts = SunsetFonts()
    let images: Images = SunsetImages()
}
