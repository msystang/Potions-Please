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
        self.addSubview(baseImageView)
        self.addSubview(hatImageView)
        self.addSubview(topImageView)
        self.addSubview(shoesImageView)
        self.addSubview(bottomImageView)
        self.addSubview(onePieceImageView)
    }
    
    func addConstraints() {
        setBackgroundImageViewConstraints()
        setBaseImageViewCOnstraints()
        setHatImageViewCOnstraints()
        setTopImageViewCOnstraints()
        setBottomImageViewCOnstraints()
        
        // Toggle One-piece & top/bottom constraints depending on which is selected
        setOnePieceImageViewCOnstraints()
        setShoesImageViewCOnstraints()
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
    
    private func setBaseImageViewCOnstraints() {
        baseImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            baseImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            baseImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -10),
            baseImageView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.7),
            baseImageView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.7)
        ])
    }
    
    private func setHatImageViewCOnstraints() {
         hatImageView.translatesAutoresizingMaskIntoConstraints = false
         
         NSLayoutConstraint.activate([
             hatImageView.centerXAnchor.constraint(equalTo: baseImageView.centerXAnchor),
             hatImageView.centerYAnchor.constraint(equalTo: baseImageView.centerYAnchor),
             hatImageView.topAnchor.constraint(equalTo: baseImageView.topAnchor),
             hatImageView.leftAnchor.constraint(equalTo: baseImageView.leftAnchor)
         ])
     }
    
    private func setTopImageViewCOnstraints() {
        topImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            topImageView.centerXAnchor.constraint(equalTo: baseImageView.centerXAnchor),
            topImageView.centerYAnchor.constraint(equalTo: baseImageView.centerYAnchor),
            topImageView.topAnchor.constraint(equalTo: baseImageView.topAnchor),
            topImageView.leftAnchor.constraint(equalTo: baseImageView.leftAnchor)
        ])
    }
    
    private func setBottomImageViewCOnstraints() {
        bottomImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            bottomImageView.centerXAnchor.constraint(equalTo: baseImageView.centerXAnchor),
            bottomImageView.centerYAnchor.constraint(equalTo: baseImageView.centerYAnchor),
            bottomImageView.topAnchor.constraint(equalTo: baseImageView.topAnchor),
            bottomImageView.leftAnchor.constraint(equalTo: baseImageView.leftAnchor)
        ])
    }
    
    private func setOnePieceImageViewCOnstraints() {
        onePieceImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            onePieceImageView.centerXAnchor.constraint(equalTo: baseImageView.centerXAnchor),
            onePieceImageView.centerYAnchor.constraint(equalTo: baseImageView.centerYAnchor),
            onePieceImageView.topAnchor.constraint(equalTo: baseImageView.topAnchor),
            onePieceImageView.leftAnchor.constraint(equalTo: baseImageView.leftAnchor)
        ])
    }
    
    private func setShoesImageViewCOnstraints() {
        shoesImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            shoesImageView.centerXAnchor.constraint(equalTo: baseImageView.centerXAnchor),
            shoesImageView.centerYAnchor.constraint(equalTo: baseImageView.centerYAnchor),
            shoesImageView.topAnchor.constraint(equalTo: baseImageView.topAnchor),
            shoesImageView.leftAnchor.constraint(equalTo: baseImageView.leftAnchor)
        ])
    }
}

