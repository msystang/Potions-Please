//
//  ItemCollectionViewCell.swift
//  Potions-Please
//
//  Created by Sunni Tang on 5/8/20.
//  Copyright © 2020 Sunni Tang. All rights reserved.
//

import UIKit

class ItemCollectionViewCell: UICollectionViewCell {
    
    lazy var itemImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.isUserInteractionEnabled = true
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = self.contentView.bounds.width / 5
        imageView.backgroundColor = UIColor(red: 188/255, green: 175/255, blue: 209/255, alpha: 1)
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
        contentView.addSubview(itemImageView)
    }
    
    private func addConstraints() {
        setItemImageViewConstraints()
    }
    
    private func setItemImageViewConstraints() {
        itemImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            itemImageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            itemImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            itemImageView.leftAnchor.constraint(equalTo: contentView.leftAnchor),
            itemImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            
        ])
    }

}
