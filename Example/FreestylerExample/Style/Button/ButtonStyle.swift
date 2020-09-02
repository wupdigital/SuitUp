//
//  ButtonStyle.swift
//  FreestylerExample
//
//  Created by Dávid Széles-Szép on 2020. 09. 01..
//  Copyright © 2020. W.UP. All rights reserved.
//

import UIKit

final class ButtonStyle: NSObject, ButtonStyleDescriptor {
    var backgroundColor: UIColor { UIColor.white.withAlphaComponent(0.2) }
    var normalTitleColor: UIColor { colors.primaryText }
    var titleFont: UIFont { fonts.body }
}
