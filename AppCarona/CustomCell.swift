//
//  CustomCell.swift
//  AppCarona
//
//  Created by Lorenzo Saraiva on 3/12/15.
//  Copyright (c) 2015 BEPID-PucRJ. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var profilePicture: UIImageView!
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var houseLocation: UILabel!
    
    @IBOutlet weak var tripTime: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
