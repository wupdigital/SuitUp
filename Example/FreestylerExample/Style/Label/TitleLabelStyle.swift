//
//  TitleLabelStyle.swift
//  FreestylerExample
//
//  Created by Dávid Szép on 2020. 09. 01..
//  Copyright © 2020. W.UP. All rights reserved.
//

import UIKit

final class TitleLabelStyle: NSObject, LabelStyleDescriptor {
    var backgroundColor: UIColor { .clear }
    var textColor: UIColor { colors.primaryText }
    var font: UIFont { fonts.title }
    var textAlignment: NSTextAlignment { .left }
}
