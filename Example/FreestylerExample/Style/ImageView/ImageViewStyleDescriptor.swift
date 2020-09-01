//
//  ImageViewStyleDescriptor.swift
//  FreestylerExample
//
//  Created by Dávid Szép on 2020. 09. 01..
//  Copyright © 2020. W.UP. All rights reserved.
//

import Freestyler
import UIKit

@objc
protocol ImageViewStyleDescriptor: StyleDescriptor {
    var image: UIImage? { get }
    var tintColor: UIColor? { get }
}
