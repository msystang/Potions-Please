//
//  MenuView+Constraints.swift
//  Potions-Please
//
//  Created by Sunni Tang on 9/9/20.
//  Copyright © 2020 Sunni Tang. All rights reserved.
//

import UIKit

extension MenuView {
    func addSubviews() {
        self.addSubview(menuButton)
        self.addSubview(downloadButton)
        self.addSubview(clearButton)
        self.addSubview(infoButton)
    }

    func addConstraints() {
        setMenuButtonConstraints()
        setDownloadButtonConstraints()
        setClearButtonConstraints()
        setInfoButtonConstraints()
    }
    
    private func setMenuButtonConstraints() {
        menuButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            menuButton.heightAnchor.constraint(equalToConstant: 30),
            menuButton.widthAnchor.constraint(equalToConstant: 30),
            menuButton.rightAnchor.constraint(equalTo: self.rightAnchor),
            menuButton.topAnchor.constraint(equalTo: self.topAnchor)
        ])
    }
    
    private func setDownloadButtonConstraints() {
        downloadButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            downloadButton.heightAnchor.constraint(equalToConstant: 30),
            downloadButton.widthAnchor.constraint(equalToConstant: 30),
            downloadButton.rightAnchor.constraint(equalTo: self.rightAnchor),
            downloadButtonCollapsedTopConstraint
        ])
    }
    
    private func setClearButtonConstraints() {
        clearButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            clearButton.heightAnchor.constraint(equalToConstant: 30),
            clearButton.widthAnchor.constraint(equalToConstant: 30),
            clearButton.rightAnchor.constraint(equalTo: self.rightAnchor),
            clearButtonCollapsedTopConstraint
        ])
    }
    
    private func setInfoButtonConstraints() {
        infoButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            infoButton.heightAnchor.constraint(equalToConstant: 30),
            infoButton.widthAnchor.constraint(equalToConstant: 30),
            infoButton.rightAnchor.constraint(equalTo: self.rightAnchor),
            infoButtonCollapsedTopConstraint
        ])
    }
}
