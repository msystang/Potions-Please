//
//  ViewController.swift
//  Potions-Please
//
//  Created by Sunni Tang on 5/5/20.
//  Copyright © 2020 Sunni Tang. All rights reserved.
//

import UIKit

class WardrobeViewController: UIViewController {
    
    // MARK: - UI Properties
    var backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "bkgd-multi")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()

    var dollView = DollView()

    
    var gestureView: UIView = {
        let view = UIView()
        return view
    }()
    
    var chevronImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.isUserInteractionEnabled = true
        imageView.contentMode = .scaleAspectFit
        //TODO: Make style struct
        imageView.tintColor = UIColor(red: 188/255, green: 175/255, blue: 209/255, alpha: 1)
        return imageView
    }()
    
    var sliderView = SliderView()
    
    lazy var sliderOpenedHeightConstraint: NSLayoutConstraint = sliderView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.8)
    lazy var sliderPartialHeightConstraint:NSLayoutConstraint = sliderView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.3)
    lazy var sliderCollapsedHeightConstraint:NSLayoutConstraint = sliderView.heightAnchor.constraint(equalToConstant: 50)
    
    // MARK: - Internal Properties
    var currentSliderViewState: SliderViewState = .partial {
        didSet {
            self.setChevronImage(state: currentSliderViewState)
            self.updateSliderConstraints(state: currentSliderViewState)
        }
    }
    
    var items = Item.items
    
    // MARK: - Lifecycle Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .yellow
        
        addSubviews()
        addConstraints()
        
        setChevronImage(state: currentSliderViewState)
        loadSliderGestures()
        
        setUpCollectionView(collectionView: sliderView.categoryCollectionView)
        setUpCollectionView(collectionView: sliderView.itemCollectionView)
        
    }

}

