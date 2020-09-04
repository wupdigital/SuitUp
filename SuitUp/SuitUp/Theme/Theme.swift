//
//  Theme.swift
//  SuitUp
//
//  Created by Dávid Széles-Szép on 2020. 08. 31..
//  Copyright © 2020. W.UP. All rights reserved.
//

public protocol Theme {
    var identifier: String { get }
    var colors: Colors { get }
    var fonts: Fonts { get }
    var images: Images { get }
}
