//
//  testViewController.swift
//  Ketshop-app
//
//  Created by Guide on 12/6/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit

class testViewController: DefaultTVC {

    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        super.tableView = table
        super.displayListType = .type4
        // Do any additional setup after loading the view.
    }
    override func didTapOn(indexPath: IndexPath) {
            performSegue(withIdentifier: "toNextPage", sender: self)
    }
}
