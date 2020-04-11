//
//  ProductCell.swift
//  Shop
//
//  Created by Антон Ларченко on 11.04.2020.
//  Copyright © 2020 Anton Larchenko. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var tableView: UITableView!
    
    var fullScreenHandler: ((_ cell: ProductCell, _ indexProduct: Int) -> Void)?
    
    private var products = [Product]()
    override func awakeFromNib() {
        super.awakeFromNib()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.register(UINib(nibName: "ProductTableViewCell", bundle: nil), forCellReuseIdentifier: "ProductTableViewCell")
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
    }
    
    func setupCell(products: [Product]) {
        self.products = products
        self.tableView.reloadData()
    }
    
}

extension ProductCell: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell") as! ProductTableViewCell
        cell.setupCell(product: self.products[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableView.deselectRow(at: indexPath, animated: true)
        fullScreenHandler?(self,indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}
