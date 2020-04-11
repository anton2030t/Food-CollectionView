//
//  Menu.swift
//  Shop
//
//  Created by Антон Ларченко on 11.04.2020.
//  Copyright © 2020 Anton Larchenko. All rights reserved.
//

import Foundation
import UIKit

struct Group {
    var groups: [Group]?
    var name: String
    var products: [Product]?
    var image: UIImage
}

struct Product {
    var name: String
    var price: Float
    var image: UIImage
}

class Menu {
    var groups = [Group]()
    
    init() {
        setup()
    }
    
    func setup() {
        
        let p1 = Product(name: "Пицца1", price: 320, image: UIImage(named: "p1")!)
        let p2 = Product(name: "Пицца2", price: 350, image: UIImage(named: "p1")!)
        let p3 = Product(name: "Пицца3", price: 380, image: UIImage(named: "p1")!)
        
        let p4 = Product(name: "Пицца4", price: 530, image: UIImage(named: "p1")!)
        let p5 = Product(name: "Пицца5", price: 570, image: UIImage(named: "p1")!)
        let p6 = Product(name: "Пицца6", price: 600, image: UIImage(named: "p1")!)
        
        let p7 = Product(name: "Пицца7", price: 750, image: UIImage(named: "p1")!)
        let p8 = Product(name: "Пицца8", price: 790, image: UIImage(named: "p1")!)
        let p9 = Product(name: "Пицца9", price: 850, image: UIImage(named: "p1")!)
        
        let pizzaGroupIn1 = Group(groups: nil, name: "Пицца 25см", products: [p1, p2, p3, p1, p2, p3, p1, p2, p3], image: UIImage(named: "p1")!)
        let pizzaGroupIn2 = Group(groups: nil, name: "Пицца 40см", products: [p4, p5, p6], image: UIImage(named: "p1")!)
        let pizzaGroupIn3 = Group(groups: nil, name: "Пицца 60см", products: [p7, p8, p9], image: UIImage(named: "p1")!)
        
        let pizzaGroup = Group(groups: [pizzaGroupIn1, pizzaGroupIn2, pizzaGroupIn3], name: "Пицца", products: nil, image: UIImage(named: "p1")!)
        
        
        //Сэндвичи
        let b1 = Product(name: "Сэндвич1", price: 250, image: UIImage(named: "p3")!)
        let b2 = Product(name: "Сэндвич2", price: 240, image: UIImage(named: "p3")!)
        let b3 = Product(name: "Сэндвич3", price: 300, image: UIImage(named: "p3")!)
        
        let b4 = Product(name: "Сэндвич4", price: 340, image: UIImage(named: "p3")!)
        let b5 = Product(name: "Сэндвич5", price: 220, image: UIImage(named: "p3")!)
        let b6 = Product(name: "Сэндвич6", price: 310, image: UIImage(named: "p3")!)
        
        let b7 = Product(name: "Сэндвич7", price: 230, image: UIImage(named: "p3")!)
        let b8 = Product(name: "Сэндвич8", price: 270, image: UIImage(named: "p3")!)
        let b9 = Product(name: "Сэндвич9", price: 330, image: UIImage(named: "p3")!)
        
        let burgerGroupIn1 = Group(groups: nil, name: "Сэндвич с колбасой", products: [b1, b2, b3], image: UIImage(named: "p3")!)
        let burgerGroupIn2 = Group(groups: nil, name: "Сэндвич с говядиной", products: [b4, b5, b6], image: UIImage(named: "p3")!)
        let burgerGroupIn3 = Group(groups: nil, name: "Сэндвич с курицей", products: [b7, b8, b9], image: UIImage(named: "p3")!)
        
        let burgerGroup = Group(groups: [burgerGroupIn1, burgerGroupIn2, burgerGroupIn3], name: "Сэндвичи", products: nil, image: UIImage(named: "p2")!)
        
        groups.append(pizzaGroup)
        groups.append(burgerGroup)
    }
}

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = (self as NSString).size(withAttributes: fontAttributes)
        return ceil(size.width)
    }
}
