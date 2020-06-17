//
//  CategoryTableViewCell.swift
//  GoodEats
//
//  Created by PHANTOM on 17/06/20.
//  Copyright © 2020 Dzulfikar Ali. All rights reserved.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {

    @IBOutlet weak var categoryImg: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        categoryImg.layer.cornerRadius = 10
    }

    func configureCell(category: FoodCategory) {
        categoryImg.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
}
