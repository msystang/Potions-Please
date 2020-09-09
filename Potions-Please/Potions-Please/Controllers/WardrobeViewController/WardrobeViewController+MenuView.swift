//
//  WardrobeViewController+MenuView.swift
//  Potions-Please
//
//  Created by Sunni Tang on 9/9/20.
//  Copyright © 2020 Sunni Tang. All rights reserved.
//

import UIKit

extension WardrobeViewController {
    
    func addTargetsToMenuButtons() {
        menuView.clearButton.addTarget(self, action: #selector(showClearAlert), for: .touchUpInside)
        menuView.downloadButton.addTarget(self, action: #selector(downloadButtonPressed), for: .touchUpInside)
        menuView.infoButton.addTarget(self, action: #selector(infoButtonPressed), for: .touchUpInside)
    }
    
    func handleClearButtonPressed(action: UIAlertAction) {
        print("clear")
        if action.title == "Clear" {
            dollView.clearDollView()
        }
    }
    
    @objc func downloadButtonPressed() {
        print("download")
    }
    
    @objc func infoButtonPressed() {
        print("info")
    }

}
