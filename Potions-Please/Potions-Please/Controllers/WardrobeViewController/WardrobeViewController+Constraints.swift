//
//  WardrobeViewController+Constraints.swift
//  Potions-Please
//
//  Created by Sunni Tang on 5/5/20.
//  Copyright © 2020 Sunni Tang. All rights reserved.
//

import UIKit

extension WardrobeViewController {
    
    func addSubviews() {
        self.view.addSubview(wardrobeImageView)
        self.view.addSubview(sliderView)
    }
    
    func addConstraints() {
        setWardrobeImageViewConstraints()
        setSliderViewConstraints()
    }
    
    func setWardrobeImageViewConstraints() {
        wardrobeImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            wardrobeImageView.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor),
            wardrobeImageView.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor),
            wardrobeImageView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            wardrobeImageView.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor)
        ])
    }
    
    func setSliderViewConstraints() {
        sliderView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            sliderView.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor),
            sliderView.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor),
            sliderView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
            sliderView.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.3)
        ])
    }
    
}
