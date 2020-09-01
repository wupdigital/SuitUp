//
//  SunsetColors.swift
//  FreestylerExample
//
//  Created by Dávid Széles-Szép on 2020. 09. 01..
//  Copyright © 2020. W.UP. All rights reserved.
//

import Freestyler
import UIKit

struct SunsetColors: ColorPalette {
    let primary = UIColor(red: 250/255, green: 251/255, blue: 189/255, alpha: 1)
    let secondary = UIColor(red: 253/255, green: 224/255, blue: 80/255, alpha: 1)
    let tertiary = UIColor(red: 241/255, green: 179/255, blue: 81/255, alpha: 1)
    
    let primaryText = UIColor.black
    var secondaryText = UIColor.black.withAlphaComponent(0.5)
}
