//
//  optionViewController.swift
//  Ketshop-app
//
//  Created by Guide on 21/5/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit

class optionViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    let burgerImages:[UIImage] = [
        UIImage(named:"book")!,
        UIImage(named:"bookshelf")!,
        UIImage(named:"library")!,
    ]
    
    var nameProduct = ["name1","name2","name3"]

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "optionTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "optionTableViewCell")

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameProduct.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "optionTableViewCell", for: indexPath) as! optionTableViewCell
        cell.iconImage.image = burgerImages[indexPath.item]
        cell.optionLabel.text = nameProduct[indexPath.item]
        cell.arrowImgae.image = burgerImages[indexPath.item]
        return cell
    }
    

}
