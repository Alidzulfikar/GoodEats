//
//  RecipeCollectionViewCell.swift
//  GoodEats
//
//  Created by PHANTOM on 17/06/20.
//  Copyright © 2020 Dzulfikar Ali. All rights reserved.
//

import UIKit

class RecipeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var recipeImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        recipeImg.layer.cornerRadius = 10
    }
    
    func configureCell(recipe: Recipe) {
        recipeImg.image = UIImage(named: recipe.imageName)
    }
    
}
