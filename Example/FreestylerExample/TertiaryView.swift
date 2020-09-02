//
//  TertiaryView.swift
//  FreestylerExample
//
//  Created by Dávid Széles-Szép on 2020. 09. 01..
//  Copyright © 2020. W.UP. All rights reserved.
//

import UIKit

final class TertiaryView: UIView {
    
    // MARK: - Outlets
    @IBOutlet private weak var imageView: UIImageView!
    
    // MARK: - Stylables
    @objc
    var imageViewStyle: (NSObject & ImageViewStyleDescriptor)? {
        didSet {
            guard let style = imageViewStyle else { return }
            imageView?.apply(style: style)
        }
    }
    
    // MARK: - Lifecycle
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
