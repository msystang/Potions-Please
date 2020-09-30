//
//  Category.swift
//  Potions-Please
//
//  Created by Sunni Tang on 7/14/20.
//  Copyright © 2020 Sunni Tang. All rights reserved.
//

import UIKit

struct Category {
    let type: ItemType?
    let image: UIImage?
    
    static let categories = [
        Category(type: .all, image: UIImage(named: "category-all")),
        Category(type: .bkgd, image: UIImage(named: "category-bkgd")),
        Category(type: .base, image: UIImage(named: "category-base")),
        Category(type: .hat, image: UIImage(named: "category-hat")),
        Category(type: .top, image: UIImage(named: "category-top")),
        Category(type: .bottom, image: UIImage(named: "category-bottom")),
        Category(type: .onepiece, image: UIImage(named: "category-onepiece")),
        Category(type: .shoes, image: UIImage(named: "category-shoes"))
    ]
}
