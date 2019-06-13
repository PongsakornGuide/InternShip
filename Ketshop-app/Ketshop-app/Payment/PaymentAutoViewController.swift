//
//  PaymentAutoViewController.swift
//  Ketshop-app
//
//  Created by Guide on 24/5/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit

class paymentAutoViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{

    let burgerImages:[UIImage] = [
        UIImage(named:"book")!,
        UIImage(named:"bookshelf")!,]
    var text = ["aa","bb"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return text.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath) as! TableViewCell
        cell.myImage.image = burgerImages[indexPath.row]
        cell.myLabel.text = text[indexPath.row]
        return cell
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

}
