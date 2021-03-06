//
//  SliderView+SliderViewState.swift
//  Potions-Please
//
//  Created by Sunni Tang on 5/5/20.
//  Copyright © 2020 Sunni Tang. All rights reserved.
//

import UIKit

extension WardrobeViewController {
    // MARK: - Enums
    enum SliderViewState {
        case opened
        case partial
        case collapsed
    }
    
    // MARK: - Internal Methods
    func setChevronImage(state: SliderViewState) {
        switch state {
        case .opened:
            self.chevronImageView.image = UIImage(systemName: "chevron.compact.down")
        case .partial:
            self.chevronImageView.image = UIImage(systemName: "minus")
        case .collapsed:
            self.chevronImageView.image = UIImage(systemName: "chevron.compact.up")
        }
        
    }
    
    func swipeDown(for state: SliderViewState) {
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.80, initialSpringVelocity: 0, options: .curveEaseInOut, animations: { [weak self] in
            
            switch self?.currentSliderViewState {
            case .opened:
                self?.currentSliderViewState = .partial
            case .partial:
                self?.currentSliderViewState = .collapsed
            case .collapsed:
                return
            default:
                return
            }
            
        }, completion: nil)
    }
    
    func swipeUp(for state: SliderViewState) {
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.80, initialSpringVelocity: 0, options: .curveEaseInOut, animations: { [weak self] in
            
            switch self?.currentSliderViewState {
            case .opened:
                return
            case .partial:
                self?.currentSliderViewState = .opened
            case .collapsed:
                self?.currentSliderViewState = .partial
            default:
                return
            }
            
        }, completion: nil)
    }
    
    func tapped(for state: SliderViewState) {
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.80, initialSpringVelocity: 0, options: .curveEaseInOut, animations: { [weak self] in
            
            switch self?.currentSliderViewState {
            case .opened:
                self?.currentSliderViewState = .partial
            case .partial:
                self?.currentSliderViewState = .collapsed
            case .collapsed:
                self?.currentSliderViewState = .partial
            default:
                return
            }
            
        }, completion: nil)
    }
    
    
    func updateSliderConstraints(state: SliderViewState) {
        switch state {
        case .opened:
            self.sliderOpenedHeightConstraint.isActive = true
            self.sliderPartialHeightConstraint.isActive = false
            self.sliderCollapsedHeightConstraint.isActive = false
        case .partial:
            self.sliderOpenedHeightConstraint.isActive = false
            self.sliderPartialHeightConstraint.isActive = true
            self.sliderCollapsedHeightConstraint.isActive = false
        case .collapsed:
            self.sliderOpenedHeightConstraint.isActive = false
            self.sliderPartialHeightConstraint.isActive = false
            self.sliderCollapsedHeightConstraint.isActive = true
        }
        
        self.view.layoutIfNeeded()
    }

}
