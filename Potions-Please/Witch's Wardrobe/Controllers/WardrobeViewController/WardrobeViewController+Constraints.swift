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
        self.view.addSubview(dollView)
        self.view.addSubview(sliderView)
        self.view.addSubview(gestureView)
        self.gestureView.addSubview(chevronImageView)
        self.view.addSubview(menuView)
    }
    
    func addConstraints() {
        setDollViewConstraints()
        setSliderViewConstraints()
        setGestureViewConstraints()
        setChevronImageViewConstraints()
        setMenuViewConstraints()
    }
    
    // MARK: - Private Methods
    private func setDollViewConstraints() {
        dollView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            dollView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            dollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -80),
            dollView.topAnchor.constraint(equalTo: self.view.topAnchor),
            dollView.leftAnchor.constraint(equalTo: self.view.leftAnchor)
        ])
    }
    
    private func setSliderViewConstraints() {
        sliderView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            sliderView.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor),
            sliderView.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor),
            sliderView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            sliderPartialHeightConstraint
        ])
    }
    
    private func setGestureViewConstraints() {
        gestureView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            gestureView.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            gestureView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            gestureView.bottomAnchor.constraint(equalTo: sliderView.topAnchor),
            gestureView.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    private func setChevronImageViewConstraints() {
        chevronImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            chevronImageView.centerXAnchor.constraint(equalTo: gestureView.centerXAnchor),
            chevronImageView.centerYAnchor.constraint(equalTo: gestureView.centerYAnchor),
            chevronImageView.heightAnchor.constraint(equalTo: gestureView.heightAnchor),
            chevronImageView.widthAnchor.constraint(equalTo: gestureView.heightAnchor)
        ])
    }
    
    private func setMenuViewConstraints() {
        menuView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            menuView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            menuView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -20),
            menuView.widthAnchor.constraint(equalToConstant: 50),
            menuView.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
    
}
