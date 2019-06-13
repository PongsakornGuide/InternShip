//
//  secoundViewController.swift
//  Ketshop-app
//
//  Created by Guide on 21/5/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit

class secoundViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UITableViewDelegate,UITableViewDataSource{
  
    @IBOutlet weak var tableView: UITableView!
    var emailText = ["diw_112@hotmail.com","amber-parker@hotmail.com","admin_1@hotmail.com"]
    var dateText = ["(16/10/18 18:57:41)","(20/10/18 19:29:41)","(14/9/18 12:52:41)"]
    var stateText = ["รอชำระเงิน","รอชำระเงิน","รอชำระเงิน"]
    var userText = ["Finley Thomson","Amber Parker","poppy rose"]
    var payText = ["1,790.00","590.00","1290.00"]

    let burgerImages:[UIImage] = [
        UIImage(named:"bookshelf")!,
        UIImage(named:"library")!,
        UIImage(named:"book")!,
        UIImage(named:"bookshelf")!,
        UIImage(named:"library")!,
        UIImage(named:"book")!,
        UIImage(named:"bookshelf")!,
        UIImage(named:"library")!,
        UIImage(named:"book")!,
        
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "order-LinkTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "order-LinkTableViewCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return burgerImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "linkCollectionViewCell", for: indexPath) as! linkCollectionViewCell
        cell.imgImage.image = burgerImages[indexPath.row]
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emailText.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "order-LinkTableViewCell", for: indexPath) as! order_LinkTableViewCell
    cell.order_link(date: dateText[indexPath.item], email: emailText[indexPath.item], state: stateText[indexPath.item], user: userText[indexPath.item], pay: payText[indexPath.item])
    
        return cell
    }
    
    
    
}
