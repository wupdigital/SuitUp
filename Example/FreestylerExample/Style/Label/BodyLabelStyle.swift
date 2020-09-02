//
//  BodyLabelStyle.swift
//  FreestylerExample
//
//  Created by Dávid Széles-Szép on 2020. 09. 01..
//  Copyright © 2020. W.UP. All rights reserved.
//

import UIKit

final class BodyLabelStyle: NSObject, LabelStyleDescriptor {
    var backgroundColor: UIColor { .clear }
    var textColor: UIColor { colors.secondaryText }
    var font: UIFont { fonts.body }
    var textAlignment: NSTextAlignment { .left }
}

