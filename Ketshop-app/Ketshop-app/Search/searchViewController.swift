//
//  searchViewController.swift
//  Ketshop-app
//
//  Created by Guide on 20/5/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit

class searchViewController: UIViewController{

    @IBOutlet weak var firstVIew: UIView!
    @IBOutlet weak var secoundView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()


        // Do any additional setup after loading the view.
    }
    
    @IBAction func switchView(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            firstVIew.alpha = 1
            secoundView.alpha = 0
        }else{
            firstVIew.alpha = 0
            secoundView.alpha = 1
        }
}
    
}
