//
//  Doll.swift
//  Potions-Please
//
//  Created by Sunni Tang on 5/31/20.
//  Copyright © 2020 Sunni Tang. All rights reserved.
//

// TODO: create enum for image strings
// TODO: add backgroundImageView to DollView
// TODO: Handle onepiece vs. top/bottom

import UIKit

class Item {
    let name: String
    let type: ItemType
    let image: UIImage?
    let thumbnailImage: UIImage?
    
    init(name: String, type: ItemType, image: UIImage?, thumbnailImage: UIImage?) {
        self.name = name
        self.type = type
        self.image = image
        self.thumbnailImage = thumbnailImage
    }
    
    static let items: [Item] = [
        // Backgrounds
        Item(name: "Blue Background", type: .bkgd, image: UIImage(named: "bkgd-blue"), thumbnailImage: UIImage(named: "bkgd-blue")),
        Item(name: "Green Background", type: .bkgd, image: UIImage(named: "bkgd-green"), thumbnailImage: UIImage(named: "bkgd-green")),
        Item(name: "Multi Background", type: .bkgd, image: UIImage(named: "bkgd-multi"), thumbnailImage: UIImage(named: "bkgd-multi")),
        Item(name: "Pink Background", type: .bkgd, image: UIImage(named: "bkgd-pink"), thumbnailImage: UIImage(named: "bkgd-pink")),
        Item(name: "Purple Background", type: .bkgd, image: UIImage(named: "bkgd-purple"), thumbnailImage: UIImage(named: "bkgd-purple")),
        
        // Bases
        Item(name: "Holly", type: .base, image: UIImage(named: "base-holly"), thumbnailImage: UIImage(named: "thumbnail-base-holly")),
        Item(name: "Rosy", type: .base, image: UIImage(named: "base-rosy"), thumbnailImage: UIImage(named: "thumbnail-base-rosy")),
        Item(name: "Iris", type: .base, image: UIImage(named: "base-iris"), thumbnailImage: UIImage(named: "thumbnail-base-iris")),
        Item(name: "Skye", type: .base, image: UIImage(named: "base-skye"), thumbnailImage: UIImage(named: "thumbnail-base-skye")),

        // Bottoms
        Item(name: "Holly's Pants", type: .bottom, image: UIImage(named: "bottom-holly"), thumbnailImage: UIImage(named: "thumbnail-bottom-holly")),
        Item(name: "Iris's Skirt", type: .bottom, image: UIImage(named: "bottom-iris"), thumbnailImage: UIImage(named: "thumbnail-bottom-iris")),
        Item(name: "Rosy's Skirt", type: .bottom, image: UIImage(named: "bottom-rosy"), thumbnailImage: UIImage(named: "thumbnail-bottom-rosy")),
        Item(name: "Skye's Pants", type: .bottom, image: UIImage(named: "bottom-skye"), thumbnailImage: UIImage(named: "thumbnail-bottom-skye")),
        
        // Hats
        Item(name: "Holly's Hat", type: .hat, image: UIImage(named: "hat-holly"), thumbnailImage: UIImage(named: "thumbnail-hat-holly")),
        Item(name: "Iris's Hat", type: .hat, image: UIImage(named: "hat-iris"), thumbnailImage: UIImage(named: "thumbnail-hat-iris")),
        Item(name: "Rosy's Hat", type: .hat, image: UIImage(named: "hat-rosy"), thumbnailImage: UIImage(named: "thumbnail-hat-rosy")),
        Item(name: "Skye's Hat", type: .hat, image: UIImage(named: "hat-skye"), thumbnailImage: UIImage(named: "thumbnail-hat-skye")),
        
        // Onepieces
        Item(name: "Holly's Dress", type: .onepiece, image: UIImage(named: "onepiece-holly"), thumbnailImage: UIImage(named: "thumbnail-onepiece-holly")),
        Item(name: "Iris's Dress", type: .onepiece, image: UIImage(named: "onepiece-iris"), thumbnailImage: UIImage(named: "thumbnail-onepiece-iris")),
        Item(name: "Rosy's Dress", type: .onepiece, image: UIImage(named: "onepiece-rosy"), thumbnailImage: UIImage(named: "thumbnail-onepiece-rosy")),
        Item(name: "Skye's Dress", type: .onepiece, image: UIImage(named: "onepiece-skye"), thumbnailImage: UIImage(named: "thumbnail-onepiece-skye")),

        // Shoes
        Item(name: "Holly's Shoes", type: .shoes, image: UIImage(named: "shoes-holly"), thumbnailImage: UIImage(named: "thumbnail-shoes-holly")),
        Item(name: "Holly's Shoes 2", type: .shoes, image: UIImage(named: "shoes-holly-2"), thumbnailImage: UIImage(named: "thumbnail-shoes-holly-2")),
        Item(name: "Iris's Shoes", type: .shoes, image: UIImage(named: "shoes-iris"), thumbnailImage: UIImage(named: "thumbnail-shoes-iris")),
        Item(name: "Iris's Shoes 2", type: .shoes, image: UIImage(named: "shoes-iris-2"), thumbnailImage: UIImage(named: "thumbnail-shoes-iris-2")),
        Item(name: "Rosy's Shoes", type: .shoes, image: UIImage(named: "shoes-rosy"), thumbnailImage: UIImage(named: "thumbnail-shoes-rosy")),
        Item(name: "Rosy's Shoes 2", type: .shoes, image: UIImage(named: "shoes-rosy-2"), thumbnailImage: UIImage(named: "thumbnail-shoes-rosy-2")),
        Item(name: "Skye's Shoes", type: .shoes, image: UIImage(named: "shoes-skye"), thumbnailImage: UIImage(named: "thumbnail-shoes-skye")),
        Item(name: "Skye's Shoes 2", type: .shoes, image: UIImage(named: "shoes-skye-2"), thumbnailImage: UIImage(named: "thumbnail-shoes-skye-2")),

        // Tops
      Item(name: "Holly's Top", type: .top, image: UIImage(named: "top-holly"), thumbnailImage: UIImage(named: "thumbnail-top-holly")),
      Item(name: "Iris's Top", type: .top, image: UIImage(named: "top-iris"), thumbnailImage: UIImage(named: "thumbnail-top-iris")),
      Item(name: "Rosy's Top", type: .top, image: UIImage(named: "top-rosy"), thumbnailImage: UIImage(named: "thumbnail-top-rosy")),
      Item(name: "Skye's Top", type: .top, image: UIImage(named: "top-skye"), thumbnailImage: UIImage(named: "thumbnail-top-skye")),
        
        
    ]
}
