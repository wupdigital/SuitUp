//
//  StyleDescriptor+Palettes.swift
//  FreestylerExample
//
//  Created by Dávid Széles-Szép on 2020. 09. 01..
//  Copyright © 2020. W.UP. All rights reserved.
//

import Freestyler

extension StyleDescriptor {
    var colors: ColorPalette { Freestyler.shared.currentTheme?.colors as! ColorPalette }
    var fonts: FontPalette { Freestyler.shared.currentTheme?.fonts as! FontPalette }
    var images: ImagePalette { Freestyler.shared.currentTheme?.images as! ImagePalette }
}
