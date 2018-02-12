//
//  BucketListTableViewCell.swift
//  Mini-Project
//
//  Created by Justin Barry on 2/11/18.
//  Copyright © 2018 Your School. All rights reserved.
//

import Foundation
import UIKit

class BucketListTableViewCell: UITableViewCell {
    
//    @IBOutlet weak var dateLabel: UILabel!
//    @IBOutlet weak var noteNameLabel: UILabel!
    

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
}
