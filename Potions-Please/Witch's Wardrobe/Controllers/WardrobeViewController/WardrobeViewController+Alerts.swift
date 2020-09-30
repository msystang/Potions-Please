//
//  WardrobeViewController+Alerts.swift
//  Potions-Please
//
//  Created by Sunni Tang on 9/9/20.
//  Copyright © 2020 Sunni Tang. All rights reserved.
//

import UIKit

extension WardrobeViewController {
    
    func showClearAlert() {
        let ac = UIAlertController(title: "Are you sure you want to clear your wardrobe?", message: "Pressing 'Clear' will result in the loss of your progress.", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        ac.addAction(UIAlertAction(title: "Clear", style: .destructive, handler: { (action) in
            self.handleClearButtonPressed(action: action)
        }))
        present(ac, animated: true, completion: nil)
    }
    
    func showSaveImageErrorAlert(error: Error) {
        let ac = UIAlertController(title: "Save error", message: error.localizedDescription, preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default))
        present(ac, animated: true)
    }
    
    func showSaveImageSuccessAlert() {
        let ac = UIAlertController(title: "Saved!", message: "Your image has been saved to your photos.", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default))
        present(ac, animated: true)
    }
}
