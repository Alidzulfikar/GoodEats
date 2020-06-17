//
//  RecipeDetailViewController.swift
//  GoodEats
//
//  Created by PHANTOM on 17/06/20.
//  Copyright © 2020 Dzulfikar Ali. All rights reserved.
//

import UIKit

class RecipeDetailViewController: UIViewController {
    
    var selectedImage: String!
    var selectedTitle: String!
    var selectedSubtitle: String!

    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        detailImageView.image = UIImage(named: selectedImage)
        titleLabel.text = selectedTitle
        subtitleLabel.text = selectedSubtitle
        
    }


}
