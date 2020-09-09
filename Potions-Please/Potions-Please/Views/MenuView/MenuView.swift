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
        button.setImage(UIImage(named: "menu-download"), for: .selected)
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
    
    lazy var clearButtonOpenedTopConstraint: NSLayoutConstraint = clearButton.topAnchor.constraint(equalTo: downloadButton.bottomAnchor, constant: 20)
    lazy var clearButtonCollapsedTopConstraint: NSLayoutConstraint = clearButton.topAnchor.constraint(equalTo: menuButton.topAnchor)
    
    lazy var infoButtonOpenedTopConstraint: NSLayoutConstraint = infoButton.topAnchor.constraint(equalTo: clearButton.bottomAnchor, constant: 20)
    lazy var infoButtonCollapsedTopConstraint: NSLayoutConstraint = infoButton.topAnchor.constraint(equalTo: menuButton.topAnchor)
    
    var currentMenuViewState: MenuViewState = .collapsed {
        didSet {
            self.setMenuButtonImage(state: currentMenuViewState)
            self.animateButtons(state: currentMenuViewState)
        }
    }
    
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
        currentMenuViewState = currentMenuViewState == .opened ? .collapsed : .opened
    }
    
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
        NSLayoutConstraint.deactivate([downloadButtonCollapsedTopConstraint, clearButtonCollapsedTopConstraint, infoButtonCollapsedTopConstraint])
        NSLayoutConstraint.activate([downloadButtonOpenedTopConstraint, clearButtonOpenedTopConstraint, infoButtonOpenedTopConstraint])
    }
    
    private func activateCollapsedButtonConstraints() {
        NSLayoutConstraint.deactivate([downloadButtonOpenedTopConstraint, clearButtonOpenedTopConstraint, infoButtonOpenedTopConstraint])
        NSLayoutConstraint.activate([downloadButtonCollapsedTopConstraint, clearButtonCollapsedTopConstraint, infoButtonCollapsedTopConstraint])
    }

    private func removeButtonAlpha() {
        downloadButton.alpha = 0
        clearButton.alpha = 0
        infoButton.alpha = 0
    }
    
    private func addButtonAlpha() {
        downloadButton.alpha = 1
        clearButton.alpha = 1
        infoButton.alpha = 1
    }
}
