///
//  TableViewCell.swift
//  Ketshop-app
//
//  Created by Guide on 24/5/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
