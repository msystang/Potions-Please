//
//  WardrobeViewController+Constraints.swift
//  Potions-Please
//
//  Created by Sunni Tang on 5/5/20.
//  Copyright © 2020 Sunni Tang. All rights reserved.
//

import UIKit

extension WardrobeViewController {
    // MARK: - Internal Methods
    func addSubviews() {
        self.view.addSubview(wardrobeImageView)
        self.view.addSubview(sliderView)
        self.view.addSubview(gestureView)
        self.gestureView.addSubview(chevronImageView)
    }
    
    func addConstraints() {
        setWardrobeImageViewConstraints()
        setSliderViewConstraints()
        setGestureViewConstraints()
        setChevronImageViewConstraints()
    }
    
    // MARK: - Private Methods
    private func setWardrobeImageViewConstraints() {
        wardrobeImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            wardrobeImageView.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor),
            wardrobeImageView.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor),
            wardrobeImageView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            wardrobeImageView.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor)
        ])
    }
    
    private func setSliderViewConstraints() {
        sliderView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            sliderView.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor),
            sliderView.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor),
            sliderView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
            sliderPartialHeightConstraint
        ])
    }
    
    private func setGestureViewConstraints() {
        gestureView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            gestureView.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            gestureView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            gestureView.bottomAnchor.constraint(equalTo: sliderView.topAnchor),
            gestureView.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func setChevronImageViewConstraints() {
        chevronImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            chevronImageView.centerXAnchor.constraint(equalTo: gestureView.centerXAnchor),
            chevronImageView.centerYAnchor.constraint(equalTo: gestureView.centerYAnchor),
            chevronImageView.heightAnchor.constraint(equalToConstant: 40),
            chevronImageView.widthAnchor.constraint(equalToConstant: 40)
        ])
    }
    
}
