//
//  ViewController.swift
//  FreestylerExample
//
//  Created by Dávid Szép on 2020. 08. 31..
//  Copyright © 2020. W.UP. All rights reserved.
//

import UIKit
import Freestyler

final class ViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet private weak var primaryView: UIView!
    @IBOutlet private weak var secondaryView: UIView!
    @IBOutlet private weak var tertiaryView: UIView!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        primaryView.apply(style: PrimaryViewStyle())
        secondaryView.apply(style: SecondaryViewStyle())
        tertiaryView.apply(style: TertiaryViewStyle())
    }
}

