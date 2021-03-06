//
//  TertiaryViewStyle.swift
//  SuitUpExample
//
//  Created by Dávid Széles-Szép on 2020. 09. 01..
//  Copyright © 2020. W.UP. All rights reserved.
//

import UIKit

final class TertiaryViewStyle: NSObject, TertiaryViewStyleDescriptor {
    var backgroundColor: UIColor { colors.tertiary }
    var imageViewStyle: NSObject & ImageViewStyleDescriptor { FavoriteImageViewStyle() }
}
