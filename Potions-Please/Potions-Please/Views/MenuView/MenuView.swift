//
//  MenuView.swift
//  Potions-Please
//
//  Created by Sunni Tang on 9/9/20.
//  Copyright © 2020 Sunni Tang. All rights reserved.
//

import UIKit

class MenuView: UIView {
    // MARK: - Enum
    enum MenuViewState {
        case opened
        case collapsed
    }
    
    // MARK: - UI Properties
    lazy var menuButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "menu-purple"), for: .normal)
        button.imageEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        button.backgroundColor = UIColor(red: 218/255, green: 214/255, blue: 229/255, alpha: 1)
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(menuButtonPressed), for: .touchUpInside)
        return button
    }()
    
    var clearButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "menu-clear-purple"), for: .normal)
        button.alpha = 0
        button.imageEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        button.backgroundColor = UIColor(red: 218/255, green: 214/255, blue: 229/255, alpha: 1)
        button.layer.cornerRadius = 8
        return button
    }()
    
    var downloadButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "menu-download-purple"), for: .normal)
        button.setImage(UIImage(named: "menu-download"), for: .selected)
        button.alpha = 0
        button.imageEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        button.backgroundColor = UIColor(red: 218/255, green: 214/255, blue: 229/255, alpha: 1)
        button.layer.cornerRadius = 8
        return button
    }()
    
    var infoButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "menu-info-purple"), for: .normal)
        button.alpha = 0
        button.imageEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        button.backgroundColor = UIColor(red: 218/255, green: 214/255, blue: 229/255, alpha: 1)
        button.layer.cornerRadius = 8
        return button
    }()
    
    lazy var clearButtonOpenedTopConstraint: NSLayoutConstraint = clearButton.topAnchor.constraint(equalTo: menuButton.bottomAnchor, constant: 20)
    lazy var clearButtonCollapsedTopConstraint: NSLayoutConstraint = clearButton.topAnchor.constraint(equalTo: menuButton.topAnchor, constant: 40)
    
    lazy var downloadButtonOpenedTopConstraint: NSLayoutConstraint = downloadButton.topAnchor.constraint(equalTo: clearButton.bottomAnchor, constant: 20)
    lazy var downloadButtonCollapsedTopConstraint: NSLayoutConstraint = downloadButton.topAnchor.constraint(equalTo: menuButton.topAnchor, constant: 40)
    
    lazy var infoButtonOpenedTopConstraint: NSLayoutConstraint = infoButton.topAnchor.constraint(equalTo: downloadButton.bottomAnchor, constant: 20)
    lazy var infoButtonCollapsedTopConstraint: NSLayoutConstraint = infoButton.topAnchor.constraint(equalTo: menuButton.topAnchor, constant: 40)
    
    // MARK: - Internal Properties
    var currentMenuViewState: MenuViewState = .collapsed {
        didSet {
            self.setMenuButtonImage(state: currentMenuViewState)
            self.animateButtons(state: currentMenuViewState)
        }
    }
    
    // MARK: - Lifecycle Methods
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubviews()
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Objective-C Functions
    @objc func menuButtonPressed() {
        currentMenuViewState = currentMenuViewState == .opened ? .collapsed : .opened
    }
    
    // MARK: Private Functions
    private func setMenuButtonImage(state: MenuViewState) {
        switch state {
        case .collapsed:
            menuButton.setImage(UIImage(named: "menu-purple"), for: .normal)
        case .opened:
            menuButton.setImage(UIImage(named: "menu"), for: .normal)
        }
    }
    
    private func animateButtons(state: MenuViewState) {
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseInOut, animations: {[weak self] in
            switch state {
            case .collapsed:
                self?.activateCollapsedButtonConstraints()
                self?.removeButtonAlpha()
            case .opened:
                self?.activateOpenedButtonConstraints()
                self?.addButtonAlpha()
            }

            self?.layoutIfNeeded()
            
        })
    }
    
    private func activateOpenedButtonConstraints() {
        NSLayoutConstraint.deactivate([clearButtonCollapsedTopConstraint, downloadButtonCollapsedTopConstraint, infoButtonCollapsedTopConstraint])
        NSLayoutConstraint.activate([clearButtonOpenedTopConstraint, downloadButtonOpenedTopConstraint, infoButtonOpenedTopConstraint])
    }
    
    private func activateCollapsedButtonConstraints() {
        NSLayoutConstraint.deactivate([clearButtonOpenedTopConstraint, downloadButtonOpenedTopConstraint, infoButtonOpenedTopConstraint])
        NSLayoutConstraint.activate([clearButtonCollapsedTopConstraint, downloadButtonCollapsedTopConstraint, infoButtonCollapsedTopConstraint])
    }

    private func removeButtonAlpha() {
        clearButton.alpha = 0
        downloadButton.alpha = 0
        infoButton.alpha = 0
    }
    
    private func addButtonAlpha() {
        clearButton.alpha = 1
        downloadButton.alpha = 1
        infoButton.alpha = 1
    }
}
