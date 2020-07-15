//
//  SliderView.swift
//  Potions-Please
//
//  Created by Sunni Tang on 5/5/20.
//  Copyright © 2020 Sunni Tang. All rights reserved.
//

import UIKit

class SliderView: UIView {
    
    // MARK: - UI Properties
    lazy var categoryCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = UIColor(red: 188/255, green: 175/255, blue: 209/255, alpha: 1)
        collectionView.register(CategoryCollectionViewCell.self, forCellWithReuseIdentifier: "categoryCell")
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()
    
   lazy var itemCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(ItemCollectionViewCell.self, forCellWithReuseIdentifier: "itemCell")
        collectionView.backgroundColor = UIColor(red: 218/255, green: 214/255, blue: 229/255, alpha: 1)
        return collectionView
    }()
    
    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .green
        
        addSubViews()
        addConstraints()
        
        addShadow()
    }
    
    required init?(coder: NSCoder) {
          fatalError("init(coder:) has not been implemented")
    }
    
    private func addShadow() {
        self.layer.shadowColor = CGColor(srgbRed: 188/255, green: 175/255, blue: 209/255, alpha: 1)
        self.layer.shadowRadius = 20
        self.layer.shadowOpacity = 1
    }
}

