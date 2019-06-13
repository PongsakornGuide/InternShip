//
//  paymentViewController.swift
//  Ketshop-app
//
//  Created by Guide on 24/5/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit

class paymentViewController: UIViewController {
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var scoundView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func swiftView(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            firstView.alpha = 1
            scoundView.alpha = 0
        }else{
            firstView.alpha = 0
            scoundView.alpha = 1
        }
    }

}
