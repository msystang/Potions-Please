//
//  SliderView+Constraints.swift
//  Potions-Please
//
//  Created by Sunni Tang on 5/5/20.
//  Copyright © 2020 Sunni Tang. All rights reserved.
//

import UIKit

extension SliderView {
    // MARK: - Internal Methods
    func addSubViews() {
        self.addSubview(typeCollectionView)
        self.addSubview(categoryCollectionView)
    }
    
    func addConstraints() {
        setTypeCollectionViewConstraints()
        setCategoryCollectionViewConstraints()
    }
    
    // MARK: - Private Methods
    private func setTypeCollectionViewConstraints() {
        typeCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            typeCollectionView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            typeCollectionView.leftAnchor.constraint(equalTo: self.leftAnchor),
            typeCollectionView.topAnchor.constraint(equalTo: self.topAnchor),
            typeCollectionView.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func setCategoryCollectionViewConstraints() {
        categoryCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            categoryCollectionView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            categoryCollectionView.leftAnchor.constraint(equalTo: self.leftAnchor),
            categoryCollectionView.topAnchor.constraint(equalTo: typeCollectionView.bottomAnchor),
            categoryCollectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }

}
