//
//  CategoryCollectionViewCell.swift
//  Potions-Please
//
//  Created by Sunni Tang on 5/8/20.
//  Copyright © 2020 Sunni Tang. All rights reserved.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
    
    var typeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.isUserInteractionEnabled = true
        imageView.backgroundColor = .green
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
        contentView.addSubview(typeImageView)
    }
    
    private func addConstraints() {
        setTypeImageViewConstraints()
    }
    
    private func setTypeImageViewConstraints() {
        typeImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            typeImageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            typeImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            typeImageView.leftAnchor.constraint(equalTo: contentView.leftAnchor),
            typeImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            
        ])
    }
}
