//
//  WardrobeViewController+MenuView.swift
//  Potions-Please
//
//  Created by Sunni Tang on 9/9/20.
//  Copyright © 2020 Sunni Tang. All rights reserved.
//

import UIKit

extension WardrobeViewController {

    // MARK: - Objective C Methods
    @objc func clearButtonPressed() {
        showClearAlert()
    }
    
    @objc func downloadButtonPressed() {
        prepareImageForDownload()
        saveImage()
    }
    
    @objc func infoButtonPressed() {
        openWebsite()
    }

    @objc func image(_ image: UIImage, didFinishSavingWithError error: Error?, contextInfo: UnsafeRawPointer) {
        if let error = error {
            showSaveImageErrorAlert(error: error)
        } else {
            showSaveImageSuccessAlert()
        }
    }
    
    // MARK: - Internal Methods
    func addTargetsToMenuButtons() {
        menuView.clearButton.addTarget(self, action: #selector(clearButtonPressed), for: .touchUpInside)
        menuView.downloadButton.addTarget(self, action: #selector(downloadButtonPressed), for: .touchUpInside)
        menuView.infoButton.addTarget(self, action: #selector(infoButtonPressed), for: .touchUpInside)
    }
    
    func handleClearButtonPressed(action: UIAlertAction) {
        if action.title == "Clear" {
            dollView.clearDollView()
        }
    }
    
    func prepareImageForDownload() {
        dollView.logoImageView.isHidden = false
        dollViewImage = dollView.asImage()
        dollView.logoImageView.isHidden = true
    }
    
    func saveImage() {
        UIImageWriteToSavedPhotosAlbum(dollViewImage, self, #selector(image(_:didFinishSavingWithError:contextInfo:)), nil)
    }
    
    func openWebsite() {
        if let url = URL(string: "https://www.ledesignandgames.com/") {
            UIApplication.shared.open(url)
        }
    }
}
