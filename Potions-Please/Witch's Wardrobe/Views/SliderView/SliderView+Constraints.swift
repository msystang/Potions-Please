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
        self.addSubview(categoryCollectionView)
        self.addSubview(itemCollectionView)
    }
    
    func addConstraints() {
        setCategoryCollectionViewConstraints()
        setItemCollectionViewConstraints()
    }
    
    // MARK: - Private Methods
    private func setCategoryCollectionViewConstraints() {
        categoryCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            categoryCollectionView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            categoryCollectionView.leftAnchor.constraint(equalTo: self.leftAnchor),
            categoryCollectionView.topAnchor.constraint(equalTo: self.topAnchor),
            categoryCollectionView.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    private func setItemCollectionViewConstraints() {
        itemCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            itemCollectionView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            itemCollectionView.leftAnchor.constraint(equalTo: self.leftAnchor),
            itemCollectionView.topAnchor.constraint(equalTo: categoryCollectionView.bottomAnchor),
            itemCollectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }

}
