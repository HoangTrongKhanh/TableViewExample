//
//  ViewController.swift
//  TableViewExample
//
//  Created by Hoàng Khánh on 4/12/18.
//  Copyright © 2018 Hoàng Khánh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    var foods = [
        Food(imageName: "cream-tea", foodName: "Cream Tea", rating: 2, foodDescription: "This is a cup of cream tea"),
        Food(imageName: "japanese-salad", foodName: "Japanese Salad", rating: 2, foodDescription: "Very delicious Japanese Salad"),
        Food(imageName: "kimchi", foodName: "Korean Kimchi", rating: 3, foodDescription: "Traditional Korean Food"),
        Food(imageName: "mushroom", foodName: "Fresh mushroom", rating: 4, foodDescription: "Fresh mushroom with vegetables"),
        Food(imageName: "oysters", foodName: "Oysters", rating: 5, foodDescription: "Oysters with ice rock"),
        Food(imageName: "salad-mushroom", foodName: "Multiple salad", rating: 1, foodDescription: "Salad mixed with mushroom"),
        Food(imageName: "vegetable", foodName: "Vegetable", rating: 5, foodDescription: "Fresh vegetables")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foods.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodTableViewCell") as! FoodTableViewCell
        let food:Food = foods[indexPath.row]
        cell.imageViewFood.image = UIImage(named: food.imageName!)
        cell.lblFoodName.text = food.foodName
        cell.lblRating.text = ""
        for _ in 1...(food.rating ?? 1) {
            cell.lblRating.text = (cell.lblRating.text ?? "") + "★"
        }
        cell.lblFoodDescription.text = food.foodDescription
        return cell
    }

}

