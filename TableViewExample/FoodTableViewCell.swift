//
//  FoodTableViewCell.swift
//  TableViewExample
//
//  Created by Hoàng Khánh on 4/14/18.
//  Copyright © 2018 Hoàng Khánh. All rights reserved.
//

import UIKit

class FoodTableViewCell: UITableViewCell {
    @IBOutlet weak var imageViewFood: UIImageView!
    @IBOutlet weak var lblFoodName: UILabel!
    @IBOutlet weak var lblRating: UILabel!
    @IBOutlet weak var lblFoodDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
