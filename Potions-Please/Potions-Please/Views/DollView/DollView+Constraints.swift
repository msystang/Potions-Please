//
//  DollView+Constraints.swift
//  Potions-Please
//
//  Created by Sunni Tang on 5/8/20.
//  Copyright © 2020 Sunni Tang. All rights reserved.
//

import UIKit

extension DollView {
    // MARK: - Internal Methods
    func addSubviews() {
        self.addSubview(backgroundImageView)
    }
    
    func addConstraints() {
        setBackgroundImageViewConstraints()
    }
    
    // MARK: - Private Methods
    private func setBackgroundImageViewConstraints() {
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            backgroundImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            backgroundImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            backgroundImageView.topAnchor.constraint(equalTo: self.topAnchor),
            backgroundImageView.leftAnchor.constraint(equalTo: self.leftAnchor)
        ])
    }
    
}

