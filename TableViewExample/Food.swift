//
//  File.swift
//  TableViewExample
//
//  Created by Hoàng Khánh on 4/14/18.
//  Copyright © 2018 Hoàng Khánh. All rights reserved.
//

import Foundation
import UIKit

class Food {
    var imageName: String?
    var image:UIImage?
    var foodName: String?
    var rating: Int?
    var foodDescription: String?
    convenience init(imageName: String, foodName: String, rating: Int, foodDescription: String) {
        self.init()
        self.imageName = imageName
        self.foodName = foodName
        self.rating = rating
        self.foodDescription = foodDescription
    }
}
