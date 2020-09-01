//
//  ViewController.swift
//  FreestylerExample
//
//  Created by Dávid Szép on 2020. 08. 31..
//  Copyright © 2020. W.UP. All rights reserved.
//

import UIKit
import Freestyler

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = (Freestyler.shared.currentTheme?.colors as? ColorPalette)?.primary
    }


}

