//
//  RecipeViewController.swift
//  GoodEats
//
//  Created by PHANTOM on 17/06/20.
//  Copyright © 2020 Dzulfikar Ali. All rights reserved.
//

import UIKit

class RecipeViewController: UIViewController {
    
    var selectedCategory: String!
    let data = DataSet()
    var recipes: [Recipe]!
    
    var itemImageToPass: String!
    var itemTitleToPass: String!
    var itemSubtitleToPass: String!

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        collectionView.dataSource = self
        collectionView.delegate = self
        recipes = data.getRecipes(forCategoryTitle: selectedCategory)
    }

}

extension RecipeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return recipes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecipeCell", for: indexPath) as? RecipeCollectionViewCell {
            let recipe = recipes[indexPath.item]
            cell.configureCell(recipe: recipe)
            return cell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // find the device width
        let width = view.bounds.width
        let cellDimension = (width / 2) - 15
        return CGSize(width: cellDimension, height: cellDimension)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        itemImageToPass = recipes[indexPath.item].imageName
        itemTitleToPass = recipes[indexPath.item].title
        itemSubtitleToPass = recipes[indexPath.item].instructions
        performSegue(withIdentifier: "RecipeDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailVC = segue.destination as? RecipeDetailViewController {
            detailVC.selectedImage = itemImageToPass
            detailVC.selectedTitle = itemTitleToPass
            detailVC.selectedSubtitle = itemSubtitleToPass
        }
    }
}
