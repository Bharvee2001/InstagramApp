//
//  PostTableViewCell.swift
//  InstagramApp
//
//  Created by bharvee_parmar on 21/10/19.
//  Copyright © 2019 bharvee_parmar. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    
    
    @IBOutlet var profileImageView: UIImageView!
    
    @IBOutlet var userNameLabel: UILabel!
    
    @IBOutlet var userImageView: UIImageView!
    
    @IBOutlet var userDescLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
