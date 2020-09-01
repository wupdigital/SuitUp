//
//  LabelStyleDescriptor.swift
//  FreestylerExample
//
//  Created by Dávid Szép on 2020. 09. 01..
//  Copyright © 2020. W.UP. All rights reserved.
//

import UIKit

@objc
protocol LabelStyleDescriptor: ViewStyleDescriptor {
    var textColor: UIColor { get }
    var font: UIFont { get }
    var textAlignment: NSTextAlignment { get }
}
