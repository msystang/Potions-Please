//
//  ViewController.swift
//  Potions-Please
//
//  Created by Sunni Tang on 5/5/20.
//  Copyright © 2020 Sunni Tang. All rights reserved.
//

import UIKit

class WardrobeViewController: UIViewController {

    var wardrobeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .red
        return imageView
    }()
    
    var sliderView = SliderView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .yellow
        
        addSubviews()
        addConstraints()
        
    }


}

