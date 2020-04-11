//
//  ProductTableViewCell.swift
//  Shop
//
//  Created by Антон Ларченко on 11.04.2020.
//  Copyright © 2020 Anton Larchenko. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setupCell(product: Product) {
        self.productImage.image = product.image
        self.productName.text = product.name
        self.productPrice.text = "\(product.price)"
    }
    
}
