//
//  Doll.swift
//  Potions-Please
//
//  Created by Sunni Tang on 5/31/20.
//  Copyright © 2020 Sunni Tang. All rights reserved.
//

import UIKit

struct DollItem {
    let name: String
    let type: DollItemType
    let image: UIImage
    
    // TODO: Deal with force-unwrapped UIImages
    static let dollItems: [DollItem] = [
        DollItem(name: "Rosy", type: DollItemType.doll, image: UIImage(named: "rosy")!),
        DollItem(name: "Rosy's Hat", type: DollItemType.hat, image: UIImage(named: "rosy-hat")!),
        DollItem(name: "Rosy's One Piece", type: DollItemType.onepiece, image: UIImage(named: "rosy-onepiece")!),
        DollItem(name: "Rosy's Shoes", type: DollItemType.shoes, image: UIImage(named: "rosy-shoes")!),
        
        DollItem(name: "Holly", type: DollItemType.doll, image: UIImage(named: "holly")!),
        DollItem(name: "Holly's Hat", type: DollItemType.hat, image: UIImage(named: "Holly-hat")!),
        DollItem(name: "Holly's One Piece", type: DollItemType.onepiece, image: UIImage(named: "Holly-onepiece")!),
        DollItem(name: "Holly's Shoes", type: DollItemType.shoes, image: UIImage(named: "Holly-shoes")!)
    ]
}

enum DollItemType: String {
    case doll
    case hat
    case onepiece
    case shoes
}
