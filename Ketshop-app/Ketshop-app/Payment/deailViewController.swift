//
//  deailViewController.swift
//  Ketshop-app
//
//  Created by Guide on 24/5/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit

class deailViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    let countryData = [
        ["asd","asdas","asdas","asdas"],
        
        ["234","asdas","asAsa","dddd"],
        
        ["333","333","333","4444"],
    ]

    let burgerImages : [UIImage] = [
        UIImage(named:"book")!,
        
        UIImage(named:"bookshelf")!,
        
        UIImage(named:"bookshelf")!
    ]
    
    
    var contientIndex : Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.setTitleRight2(titleRight2: "Guide")
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        let nib = UINib(nibName: "payViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "payViewCell")
        // Do any additional setup after loading the view.
    }
    
    func customInit(contientIndex: Int,title: String) {
        self.contientIndex = contientIndex
        self.title = title
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "payViewCell",for: indexPath) as! payViewCell
        cell.labelText.text = countryData[contientIndex][indexPath.row]
        cell.imageCOnn.image = burgerImages[indexPath.row]
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
