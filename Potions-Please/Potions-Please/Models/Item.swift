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
    
    // TODO: Deal with force-unwrapped UIImages
    static let dollItems: [Item] = [
        Item(name: "Rosy", type: ItemType.doll, image: UIImage(named: "rosy")!),
        Item(name: "Rosy's Hat", type: ItemType.hat, image: UIImage(named: "rosy-hat")!),
        Item(name: "Rosy's One Piece", type: ItemType.onepiece, image: UIImage(named: "rosy-onepiece")!),
        Item(name: "Rosy's Shoes", type: ItemType.shoes, image: UIImage(named: "rosy-shoes")!),
        
        Item(name: "Holly", type: ItemType.doll, image: UIImage(named: "holly")!),
        Item(name: "Holly's Hat", type: ItemType.hat, image: UIImage(named: "Holly-hat")!),
        Item(name: "Holly's One Piece", type: ItemType.onepiece, image: UIImage(named: "Holly-onepiece")!),
        Item(name: "Holly's Shoes", type: ItemType.shoes, image: UIImage(named: "Holly-shoes")!)
    ]
}

enum ItemType: String {
    case doll
    case hat
    case onepiece
    case shoes
}
