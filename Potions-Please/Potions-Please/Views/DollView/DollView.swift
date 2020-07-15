//
//  DollView.swift
//  Potions-Please
//
//  Created by Sunni Tang on 5/8/20.
//  Copyright © 2020 Sunni Tang. All rights reserved.
//

import UIKit

class DollView: UIView {
    
    var backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        // TODO: select bkgd image from typeCV
        imageView.image = UIImage(named: "bkgd-multi")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    var baseImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "base-holly")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    var hatImageView: UIImageView = {
        let imageView = UIImageView()
//        imageView.image = UIImage(named: "rosy-hat")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    var topImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    var bottomImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    var onePieceImageView: UIImageView = {
        let imageView = UIImageView()
//        imageView.image = UIImage(named: "rosy-onepiece")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    var shoesImageView: UIImageView = {
        let imageView = UIImageView()
//        imageView.image = UIImage(named: "rosy-shoes")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .gray
        
        addSubviews()
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
          fatalError("init(coder:) has not been implemented")
    }
    
}
