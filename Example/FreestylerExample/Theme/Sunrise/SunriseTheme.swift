//
//  SunriseTheme.swift
//  FreestylerExample
//
//  Created by Dávid Széles-Szép on 2020. 09. 01..
//  Copyright © 2020. W.UP. All rights reserved.
//

import Foundation
import Freestyler

struct SunriseTheme: Theme {
    let identifier: String = ThemeIdentifier.sunrise.rawValue
    
    let colors: Colors = SunriseColors()
    let fonts: Fonts = SunriseFonts()
    let images: Images = SunriseImages()
}
