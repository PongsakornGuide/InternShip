//
//  Cell.swift
//  Ketshop-app
//
//  Created by Guide on 11/6/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit

class Cell: UITableViewCell {

    
//TVH1
    @IBOutlet weak var iconHome: UIImageView!
    @IBOutlet weak var headLabel: UILabel!
    @IBOutlet weak var numLabel: UILabel!
    
 //TVH1
    @IBOutlet weak var iconHome2: UIImageView!
    @IBOutlet weak var headLabel2: UILabel!
    @IBOutlet weak var numLabel2: UILabel!
    
//WHPD && //WHDTVC
    @IBOutlet weak var imageWh: UIImageView!
    @IBOutlet weak var nameWh: UILabel!
    @IBOutlet weak var codeWh: UILabel!
    @IBOutlet weak var priceWh: UILabel!
    @IBOutlet weak var otherWh: UILabel!
    @IBOutlet weak var otherWh1: UILabel!
    @IBOutlet weak var otherWh2: UILabel!
    
    @IBOutlet weak var dayOfend: UILabel!
    @IBOutlet weak var endOfday: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func custom(imagePD:String,head:String,num:String,imagePD2:String,head2:String,num2:String){
        self.iconHome.image = UIImage(named:imagePD)
        self.headLabel.text = head
        self.numLabel.text = num
        self.iconHome2.image = UIImage(named:imagePD2)
        self.headLabel2.text = head2
        self.numLabel2.text = num2
    }
    
    
    func warehouse(image:String,name:String,code:String,price:String){
        self.imageWh.image = UIImage(named: image)
        self.nameWh.text = name
        self.codeWh.text = code
        self.priceWh.text = price
    }
    
    func warehousedt(image:String,name:String,code:String,price:String,oth:String,oth1:String,oth2:String){
        self.imageWh.image = UIImage(named: image)
        self.nameWh.text = name
        self.codeWh.text = code
        self.priceWh.text = price
        self.otherWh.text = oth
        self.otherWh.text = oth1
        self.otherWh.text = oth2
    }
    
    func detail(name:String,code:String,day:String,end:String){
        self.nameWh.text = name
        self.codeWh.text = code
        self.dayOfend.text = day
        self.endOfday.text = end
    }
}
