//
//  ButtonStyleDescriptor.swift
//  FreestylerExample
//
//  Created by Dávid Szép on 2020. 09. 01..
//  Copyright © 2020. W.UP. All rights reserved.
//

import UIKit

@objc
protocol ButtonStyleDescriptor: ViewStyleDescriptor {
    var normalTitleColor: UIColor { get }
    var titleFont: UIFont { get }
}
