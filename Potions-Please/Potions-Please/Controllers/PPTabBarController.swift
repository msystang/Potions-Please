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
        
        configureTabBar()
        setTabBarColors()
    }
    
    private func configureTabBar() {
        wardrobeVC.tabBarItem = UITabBarItem(title: "Witch's Wardrobe", image: UIImage(systemName: "wand.and.stars"), tag: 0)
        selfieVC.tabBarItem = UITabBarItem(title: "Selfie", image: UIImage(systemName: "camera"), tag: 1)
        infoVC.tabBarItem = UITabBarItem(title: "Potions Please", image: UIImage(systemName: "info.circle"), tag: 2)
        
        self.viewControllers = [wardrobeVC, selfieVC, infoVC]
    }
    
    private func setTabBarColors() {
        self.tabBar.tintColor = UIColor(red: 188/255, green: 175/255, blue: 209/255, alpha: 1)
        self.tabBar.barTintColor = UIColor(red: 218/255, green: 214/255, blue: 229/255, alpha: 1)
    }

}
