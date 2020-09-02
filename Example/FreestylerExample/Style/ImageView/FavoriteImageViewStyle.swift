//
//  FavoriteImageViewStyle.swift
//  FreestylerExample
//
//  Created by Dávid Széles-Szép on 2020. 09. 01..
//  Copyright © 2020. W.UP. All rights reserved.
//

import UIKit

final class FavoriteImageViewStyle: NSObject, ImageViewStyleDescriptor {
    var image: UIImage? { images.favorite }
    var tintColor: UIColor? { colors.primaryText }
}

