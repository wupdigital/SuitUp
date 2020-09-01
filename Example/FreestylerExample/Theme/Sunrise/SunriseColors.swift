//
//  SunriseColors.swift
//  FreestylerExample
//
//  Created by Dávid Széles-Szép on 2020. 09. 01..
//  Copyright © 2020. W.UP. All rights reserved.
//

import Freestyler
import UIKit

struct SunriseColors: ColorPalette {
    let primary = UIColor(red: 6/255, green: 43/255, blue: 121/255, alpha: 1)
    let secondary = UIColor(red: 22/255, green: 73/255, blue: 138/255, alpha: 1)
    let tertiary = UIColor(red: 89/255, green: 149/255, blue: 183/255, alpha: 1)
    
    let primaryText = UIColor.white
    var secondaryText = UIColor.white.withAlphaComponent(0.5)
}
