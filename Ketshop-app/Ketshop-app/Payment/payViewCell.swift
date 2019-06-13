//
//  payViewCell.swift
//  Ketshop-app
//
//  Created by Guide on 24/5/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit

class payViewCell: UITableViewCell {

    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var imageCOnn: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

    func order_link(text:String,image:String) {
        self.labelText.text = text
        self.imageCOnn.image = UIImage.init()
    }
    
}
