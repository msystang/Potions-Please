//
//  WardrobeViewController+Gestures.swift
//  Potions-Please
//
//  Created by Sunni Tang on 5/6/20.
//  Copyright © 2020 Sunni Tang. All rights reserved.
//

import UIKit

extension WardrobeViewController {
    // MARK: - Objc Functions
    @objc func gesturePerformed(gesture: UIGestureRecognizer) {
        print(gesture)
        
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            switch swipeGesture.direction {
            case .down:
                self.swipeDown(for: currentSliderViewState)
            case .up:
                self.swipeUp(for: currentSliderViewState)
            default:
                return
            }
        }
    }
    
    // MARK: - Internal Methods
    func loadSliderGestures() {
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(gesturePerformed(gesture:)))
        swipeDown.direction = .down
    
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(gesturePerformed(gesture:)))
        swipeUp.direction = .up
        
        let tapped = UITapGestureRecognizer(target: self, action: #selector(gesturePerformed(gesture:)))
        
        self.gestureView.addGestureRecognizer(swipeDown)
        self.gestureView.addGestureRecognizer(swipeUp)
        self.gestureView.addGestureRecognizer(tapped)
    }

}
