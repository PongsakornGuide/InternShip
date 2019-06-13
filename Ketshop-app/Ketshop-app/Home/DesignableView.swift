//
//  designableView.swift
//  Ketshop-app
//
//  Created by Guide on 17/5/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit

class DesignableView: UIView {

    @IBInspectable var borderColor: UIColor = UIColor.white {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 2.0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
}

