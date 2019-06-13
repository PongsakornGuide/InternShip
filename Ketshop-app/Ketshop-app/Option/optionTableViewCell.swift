//
//  optionTableViewCell.swift
//  Ketshop-app
//
//  Created by Guide on 21/5/2562 BE.
//  Copyright © 2562 guide. All rights reserved.
//

import UIKit

class optionTableViewCell: UITableViewCell {

    @IBOutlet weak var iconImage: UIImageView!
    
    @IBOutlet weak var optionLabel: UILabel!
    
    @IBOutlet weak var arrowImgae: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func option(iconimg:String,option:String,arrowimg:String){
        self.iconImage.image = UIImage.init()
        self.optionLabel.text = option
        self.arrowImgae.image = UIImage.init()
    }
    
}
