//
//  order-LinkTableViewCell.swift
//  Ketshop-app
//
//  Created by Guide on 21/5/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit

class order_LinkTableViewCell: UITableViewCell {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var payLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func order_link(date:String,email:String,state:String,user:String,pay:String) {
        self.dateLabel.text = date
        self.emailLabel.text = email
        self.stateLabel.text = state
        self.userLabel.text = user
        self.payLabel.text = pay
    }
    
    
}
