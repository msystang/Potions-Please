//
//  Doll.swift
//  Potions-Please
//
//  Created by Sunni Tang on 5/31/20.
//  Copyright © 2020 Sunni Tang. All rights reserved.
//

import UIKit

struct Item {
    let name: String
    let type: ItemType
    let image: UIImage
    let thumbnailImage: UIImage
    
    // TODO: Add bkgd images
    // TODO: Deal with force-unwrapped UIImages
    // TODO: Replace thumbnail Images
    static let items: [Item] = [
        Item(name: "Rosy", type: ItemType.doll, image: UIImage(named: "rosy")!, thumbnailImage: UIImage(named: "rosy")!),
        Item(name: "Rosy's Hat", type: ItemType.hat, image: UIImage(named: "rosy-hat")!, thumbnailImage: UIImage(named: "rosy-hat")!),
        Item(name: "Rosy's One Piece", type: ItemType.onepiece, image: UIImage(named: "rosy-onepiece")!, thumbnailImage: UIImage(named: "rosy-onepiece")!),
        Item(name: "Rosy's Shoes", type: ItemType.shoes, image: UIImage(named: "rosy-shoes")!, thumbnailImage: UIImage(named: "rosy-shoes")!),
        
        Item(name: "Holly", type: ItemType.doll, image: UIImage(named: "holly")!, thumbnailImage: UIImage(named: "holly")!),
        Item(name: "Holly's Hat", type: ItemType.hat, image: UIImage(named: "holly-hat")!, thumbnailImage: UIImage(named: "holly-hat")!),
        Item(name: "Holly's One Piece", type: ItemType.onepiece, image: UIImage(named: "holly-onepiece")!, thumbnailImage: UIImage(named: "holly-onepiece")!),
        Item(name: "Holly's Shoes", type: ItemType.shoes, image: UIImage(named: "holly-shoes")!, thumbnailImage: UIImage(named: "holly-shoes")!)
    ]
}
