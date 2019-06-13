//
//  WarehouseVC.swift
//  Ketshop-app
//
//  Created by Guide on 12/6/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit

class WarehouseVC: DefaultTVC {

    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        super.tableView = table
        super.displayListType = .type2
    }
    
     override func didTapOn(indexPath: IndexPath) {
        print(indexPath)
    }
}
