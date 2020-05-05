//
//  SliderView.swift
//  Potions-Please
//
//  Created by Sunni Tang on 5/5/20.
//  Copyright © 2020 Sunni Tang. All rights reserved.
//

import UIKit

class SliderView: UIView {
    
    var chevronImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.isUserInteractionEnabled = true
        return imageView
    }()
    
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
    
    var sliderViewState: SliderViewState = .half
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .green
        
        addSubViews()
        addConstraints()
        setChevronImage(state: sliderViewState)
        
        loadChevronGestures()
    }
    
    required init?(coder: NSCoder) {
          fatalError("init(coder:) has not been implemented")
    }
    
    func setChevronImage(state: SliderViewState) {
        switch state {
        case .opened:
            self.chevronImageView.image = UIImage(systemName: "chevron.compact.down")
        case .half:
            self.chevronImageView.image = UIImage(systemName: "minus")
        case .collapsed:
            self.chevronImageView.image = UIImage(systemName: "chevron.compact.up")
        }
        
    }
    
    func loadChevronGestures() {
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(gesturePerformed(gesture:)))
        swipeDown.direction = .down
    
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(gesturePerformed(gesture:)))
        swipeUp.direction = .up
        
        let tapped = UITapGestureRecognizer(target: self, action: #selector(gesturePerformed(gesture:)))
        
        self.chevronImageView.addGestureRecognizer(swipeDown)
        self.chevronImageView.addGestureRecognizer(swipeUp)
        self.chevronImageView.addGestureRecognizer(tapped)
    }

    @objc func gesturePerformed(gesture: UIGestureRecognizer) {
        print(gesture)
    }
}
