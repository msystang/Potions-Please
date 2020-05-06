//
//  ViewController.swift
//  Potions-Please
//
//  Created by Sunni Tang on 5/5/20.
//  Copyright © 2020 Sunni Tang. All rights reserved.
//

import UIKit

class WardrobeViewController: UIViewController {
    
    // TODO: Create view for chevron to expand gesture surface
    var gestureView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        return view
    }()
    
    var wardrobeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .gray
        return imageView
    }()
    
    var chevronImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.isUserInteractionEnabled = true
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    var sliderView = SliderView()
    
    lazy var sliderOpenedHeightConstraint: NSLayoutConstraint = self.sliderView.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.8)
    lazy var sliderPartialHeightConstraint:NSLayoutConstraint = self.sliderView.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.3)
    lazy var sliderCollapsedHeightConstraint:NSLayoutConstraint = self.sliderView.heightAnchor.constraint(equalToConstant: 50)
    
    var currentSliderViewState: SliderViewState = .partial {
        didSet {
            self.setChevronImage(state: currentSliderViewState)
            self.updateSliderConstraints(state: currentSliderViewState)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .yellow
        
        addSubviews()
        addConstraints()
        
        setChevronImage(state: currentSliderViewState)
        loadSliderGestures()
    }

}

