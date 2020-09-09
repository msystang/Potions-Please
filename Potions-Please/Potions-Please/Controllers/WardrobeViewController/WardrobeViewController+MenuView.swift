//
//  WardrobeViewController+MenuView.swift
//  Potions-Please
//
//  Created by Sunni Tang on 9/9/20.
//  Copyright © 2020 Sunni Tang. All rights reserved.
//

import UIKit

extension WardrobeViewController {
    
    func addTargetsToMenuButtons() {
        menuView.clearButton.addTarget(self, action: #selector(showClearAlert), for: .touchUpInside)
        menuView.downloadButton.addTarget(self, action: #selector(downloadButtonPressed), for: .touchUpInside)
        menuView.infoButton.addTarget(self, action: #selector(infoButtonPressed), for: .touchUpInside)
    }
    
    func handleClearButtonPressed(action: UIAlertAction) {
        if action.title == "Clear" {
            dollView.clearDollView()
        }
    }
    
    @objc func downloadButtonPressed() {
        dollViewImage = dollView.asImage()
        saveImage()
    }
    
    @objc func infoButtonPressed() {
        print("info")
    }

    
    // MARK: - Save Image Functions
    func saveImage() {
        UIImageWriteToSavedPhotosAlbum(dollViewImage, self, #selector(image(_:didFinishSavingWithError:contextInfo:)), nil)
    }

    @objc func image(_ image: UIImage, didFinishSavingWithError error: Error?, contextInfo: UnsafeRawPointer) {
        if let error = error {
            showSaveImageErrorAlert(error: error)
        } else {
            showSaveImageSuccessAlert()
        }
    }
}
