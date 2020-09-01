//
//  ColorPalette.swift
//  FreestylerExample
//
//  Created by Dávid Széles-Szép on 2020. 09. 01..
//  Copyright © 2020. W.UP. All rights reserved.
//

import Freestyler
import UIKit

protocol ColorPalette: Colors {
    var primary: UIColor { get }
    var secondary: UIColor { get }
    var primaryText: UIColor { get }
    var secondaryText: UIColor { get }
}
