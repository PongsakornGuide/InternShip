//
//  ProductViewController.swift
//  Ketshop-app
//
//  Created by Guide on 19/5/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit

class productViewController: UIViewController{
      @IBOutlet weak var firstUiView: UIView!
      @IBOutlet weak var secondUiView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func switchView(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            firstUiView.alpha = 1
            secondUiView.alpha = 0
        }else{
            firstUiView.alpha = 0
            secondUiView.alpha = 1
        }
        
    }
}
