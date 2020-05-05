//
//  PPTabBarController.swift
//  Potions-Please
//
//  Created by Sunni Tang on 5/5/20.
//  Copyright © 2020 Sunni Tang. All rights reserved.
//

import UIKit

class PPTabBarController: UITabBarController {

    var wardrobeVC = WardrobeViewController()
    var selfieVC = SelfieViewController()
    var infoVC = InfoViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        wardrobeVC.tabBarItem = UITabBarItem(title: "Witch's Wardrobe", image: UIImage(systemName: "wand.and.stars"), tag: 0)
        selfieVC.tabBarItem = UITabBarItem(title: "Selfie", image: UIImage(systemName: "camera"), tag: 1)
        infoVC.tabBarItem = UITabBarItem(title: "Potions Please", image: UIImage(systemName: "info.circle"), tag: 2)
        
        self.viewControllers = [wardrobeVC, selfieVC, infoVC]
    }
    

}
