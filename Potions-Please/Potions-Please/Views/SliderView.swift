//
//  SliderView.swift
//  Potions-Please
//
//  Created by Sunni Tang on 5/5/20.
//  Copyright © 2020 Sunni Tang. All rights reserved.
//

import UIKit

class SliderView: UIView {
    
    //TODO: Replace with collectionViews, use Views for testing
    var typeCollectionView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemPink
        return view
    }()
    
    var itemCollectionView: UIView = {
        let view = UIView()
        view.backgroundColor = .purple
        return view
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .green
        
        addSubViews()
        addConstraints()
        
        
    }
    
    required init?(coder: NSCoder) {
          fatalError("init(coder:) has not been implemented")
    }
    
    
}

