//
//  StyleDescriptor+Palettes.swift
//  SuitUpExample
//
//  Created by Dávid Széles-Szép on 2020. 09. 01..
//  Copyright © 2020. W.UP. All rights reserved.
//

import SuitUp

extension StyleDescriptor {
    var colors: ColorPalette { SuitUp.shared.currentTheme?.colors as! ColorPalette }
    var fonts: FontPalette { SuitUp.shared.currentTheme?.fonts as! FontPalette }
    var images: ImagePalette { SuitUp.shared.currentTheme?.images as! ImagePalette }
}
