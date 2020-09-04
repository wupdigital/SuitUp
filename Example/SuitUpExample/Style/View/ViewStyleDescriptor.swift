//
//  ViewStyleDescriptor.swift
//  SuitUpExample
//
//  Created by Dávid Széles-Szép on 2020. 09. 01..
//  Copyright © 2020. W.UP. All rights reserved.
//

import SuitUp
import UIKit

@objc
protocol ViewStyleDescriptor: StyleDescriptor {
    var backgroundColor: UIColor { get }
}
