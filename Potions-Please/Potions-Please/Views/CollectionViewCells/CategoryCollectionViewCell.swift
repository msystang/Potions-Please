//
//  CategoryCollectionViewCell.swift
//  Potions-Please
//
//  Created by Sunni Tang on 5/8/20.
//  Copyright © 2020 Sunni Tang. All rights reserved.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
    
    lazy var categoryImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.isUserInteractionEnabled = true
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = UIColor(red: 218/255, green: 214/255, blue: 229/255, alpha: 1)
        imageView.layer.cornerRadius = self.contentView.bounds.width / 5
        imageView.clipsToBounds = true
        return imageView
    }()
    
    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubviews()
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle Functions
    override func prepareForReuse() {
         super.prepareForReuse()
    }
    
    private func addSubviews() {
        contentView.addSubview(categoryImageView)
    }
    
    private func addConstraints() {
        setTypeImageViewConstraints()
    }
    
    private func setTypeImageViewConstraints() {
        categoryImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            categoryImageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            categoryImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            categoryImageView.leftAnchor.constraint(equalTo: contentView.leftAnchor),
            categoryImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            
        ])
    }
}
