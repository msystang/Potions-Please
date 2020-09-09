//
//  WardrobeViewController+Alerts.swift
//  Potions-Please
//
//  Created by Sunni Tang on 9/9/20.
//  Copyright © 2020 Sunni Tang. All rights reserved.
//

import UIKit

extension WardrobeViewController {
    
    @objc func showClearAlert() {
        let alertVC = UIAlertController(title: "Are you sure you want to clear your wardrobe?", message: "Pressing 'Clear' will result in the loss of your progress.", preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alertVC.addAction(UIAlertAction(title: "Clear", style: .destructive, handler: { (action) in
            self.handleClearButtonPressed(action: action)
        }))
        present(alertVC, animated: true, completion: nil)
    }
}
