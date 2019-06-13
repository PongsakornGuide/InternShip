////
////  PaymentAutoViewController.swift
////  Ketshop-app
////
////  Created by Guide on 24/5/2562 BE.
////  Copyright © 2562 guide. All rights reserved.
////
//
//import UIKit
//
//class PaymentAutoViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
//    var text = ["aa","bb"]
//    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return text.count
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath) as! autoTableViewCell
//        cell.myLabel.text = text[indexPath.row]
//        return cell
//    }
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//    }
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let countryVC = deatilViewController()
//        countryVC.customInit(contientIndex: indexPath.row, title: text[indexPath.row])
//        self.navigationController?.pushViewController(countryVC, animated: true)
//        tableView.deselectRow(at: indexPath, animated: true)
//    }
//}
