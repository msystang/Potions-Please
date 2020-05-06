//
//  SliderView+Constraints.swift
//  Potions-Please
//
//  Created by Sunni Tang on 5/5/20.
//  Copyright © 2020 Sunni Tang. All rights reserved.
//

import UIKit

extension SliderView {
    
    func addSubViews() {
        self.addSubview(typeCollectionView)
        self.addSubview(itemCollectionView)
    }
    
    func addConstraints() {
        setTypeCollectionViewConstraints()
        setItemCollectionViewConstraints()
    }
    
    func setTypeCollectionViewConstraints() {
        typeCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            typeCollectionView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            typeCollectionView.leftAnchor.constraint(equalTo: self.leftAnchor),
            typeCollectionView.topAnchor.constraint(equalTo: self.topAnchor),
            typeCollectionView.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func setItemCollectionViewConstraints() {
        itemCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            itemCollectionView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            itemCollectionView.leftAnchor.constraint(equalTo: self.leftAnchor),
            itemCollectionView.topAnchor.constraint(equalTo: typeCollectionView.bottomAnchor),
            itemCollectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }

}
