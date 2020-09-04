//
//  TertiaryViewStyleDescriptor.swift
//  SuitUpExample
//
//  Created by Dávid Széles-Szép on 2020. 09. 01..
//  Copyright © 2020. W.UP. All rights reserved.
//

import SuitUp
import UIKit

@objc
protocol TertiaryViewStyleDescriptor: ViewStyleDescriptor {
    var imageViewStyle: NSObject & ImageViewStyleDescriptor { get }
}

