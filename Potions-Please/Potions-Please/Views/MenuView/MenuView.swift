//
//  MenuView.swift
//  Potions-Please
//
//  Created by Sunni Tang on 9/9/20.
//  Copyright © 2020 Sunni Tang. All rights reserved.
//

import UIKit

class MenuView: UIView {
    
    enum MenuViewState {
        case opened
        case collapsed
    }
    
    lazy var menuButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "menu-purple"), for: .normal)
        button.addTarget(self, action: #selector(menuButtonPressed), for: .touchUpInside)
        return button
    }()
    
    var downloadButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "menu-download-purple"), for: .normal)
        button.alpha = 0
        return button
    }()
    
    var clearButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "menu-clear-purple"), for: .normal)
        button.alpha = 0
        return button
    }()
    
    var infoButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "menu-info-purple"), for: .normal)
        button.alpha = 0
        return button
    }()
    
    lazy var downloadButtonOpenedTopConstraint: NSLayoutConstraint = downloadButton.topAnchor.constraint(equalTo: menuButton.bottomAnchor, constant: 20)
    lazy var downloadButtonCollapsedTopConstraint: NSLayoutConstraint = downloadButton.topAnchor.constraint(equalTo: menuButton.topAnchor)
    
    lazy var clearButtonOpenedTopConstraint: NSLayoutConstraint = clearButton.topAnchor.constraint(equalTo: menuButton.bottomAnchor, constant: 20)
    lazy var clearButtonCollapsedTopConstraint: NSLayoutConstraint = clearButton.topAnchor.constraint(equalTo: downloadButton.topAnchor)
    
    lazy var infoButtonOpenedTopConstraint: NSLayoutConstraint = infoButton.topAnchor.constraint(equalTo: menuButton.bottomAnchor, constant: 20)
    lazy var infoButtonCollapsedTopConstraint: NSLayoutConstraint = infoButton.topAnchor.constraint(equalTo: clearButton.topAnchor)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .gray
        
        addSubviews()
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    @objc func menuButtonPressed() {
        print("pressed")
    }
}
