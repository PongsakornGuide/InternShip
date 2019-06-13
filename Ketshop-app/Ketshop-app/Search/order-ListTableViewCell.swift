//
//  order-ListTableViewCell.swift
//  Ketshop-app
//
//  Created by Guide on 21/5/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit

class order_ListTableViewCell: UITableViewCell {

    
    @IBOutlet weak var codeLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
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
    
    func order_list(code:String,email:String,date:String,state:String,user:String,pay:String) {
        self.codeLabel.text = code
        self.emailLabel.text = email
        self.dateLabel.text = date
        self.stateLabel.text = state
        self.userLabel.text = user
        self.payLabel.text = pay
    }
    
}
