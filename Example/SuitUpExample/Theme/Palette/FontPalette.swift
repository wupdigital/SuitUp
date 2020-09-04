//
//  FontPalette.swift
//  SuitUpExample
//
//  Created by Dávid Széles-Szép on 2020. 09. 01..
//  Copyright © 2020. W.UP. All rights reserved.
//

import SuitUp
import UIKit

protocol FontPalette: Fonts {
    var title: UIFont { get }
    var body: UIFont { get }
}
