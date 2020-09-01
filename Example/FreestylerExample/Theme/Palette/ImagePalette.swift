//
//  ImagePalette.swift
//  FreestylerExample
//
//  Created by Dávid Széles-Szép on 2020. 09. 01..
//  Copyright © 2020. W.UP. All rights reserved.
//

import Freestyler
import UIKit

protocol ImagePalette: Images {
    var favorite: UIFont { get }
    var heart: UIFont { get }
}
