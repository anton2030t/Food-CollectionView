//
//  GroupCell.swift
//  Shop
//
//  Created by Антон Ларченко on 11.04.2020.
//  Copyright © 2020 Anton Larchenko. All rights reserved.
//

import UIKit

class GroupCell: UICollectionViewCell {
    
    @IBOutlet weak var nameGroup: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.contentView.backgroundColor = .white
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(group: Group, isSelected: Bool) {
        self.nameGroup.text = group.name
        if isSelected {
            self.contentView.backgroundColor = .black
        } else {
            self.contentView.backgroundColor = .white
        }
    }
}
