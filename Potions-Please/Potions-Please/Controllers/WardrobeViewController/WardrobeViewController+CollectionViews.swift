//
//  WardrobeViewController+TypeCollectionView.swift
//  Potions-Please
//
//  Created by Sunni Tang on 5/8/20.
//  Copyright © 2020 Sunni Tang. All rights reserved.
//

import UIKit

extension WardrobeViewController {
    func setUpCollectionView(collectionView: UICollectionView) {
        collectionView.dataSource = self
        collectionView.delegate = self
    }
}

extension WardrobeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch collectionView {
        case sliderView.categoryCollectionView:
            return 10
        case sliderView.itemCollectionView:
            return items.count
        default:
            return 0
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
        case sliderView.categoryCollectionView:
            let typeCell = collectionView.dequeueReusableCell(withReuseIdentifier: "typeCell", for: indexPath) as! CategoryCollectionViewCell
            
            return typeCell
        case sliderView.itemCollectionView:
            let itemCell = collectionView.dequeueReusableCell(withReuseIdentifier: "itemCell", for: indexPath) as! ItemCollectionViewCell
            
            let item = items[indexPath.row]
            
            itemCell.itemImageView.image = item.thumbnailImage
            
            return itemCell
        default:
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        switch collectionView {
            case sliderView.categoryCollectionView:
                break
            case sliderView.itemCollectionView:
                let item = items[indexPath.row]
                
                switch item.type {
                    case .bkgd:
                        // TODO: upload bkgd
                        break
                    case .base:
                        dollView.baseImageView.image = item.image
                    case .bottom:
                        dollView.bottomImageView.image = item.image
                    case .hat:
                        dollView.hatImageView.image = item.image
                    case .onepiece:
                        dollView.onePieceImageView.image = item.image
                    case .shoes:
                        dollView.shoesImageView.image = item.image
                    case .top:
                    dollView.topImageView.image = item.image
                }
            
            default:
                break
        }
        
    }
    
}

extension WardrobeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.invalidateLayout()
        
        switch collectionView {
        case sliderView.categoryCollectionView:
            layout.sectionInset = UIEdgeInsets(top: 10, left: 5, bottom: 10, right: 5)
            layout.minimumInteritemSpacing = 5
            return CGSize(width: 40, height: 40)
        case sliderView.itemCollectionView:
            layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
            layout.minimumInteritemSpacing = 10
            layout.minimumLineSpacing = 10
            return CGSize(width: ((self.view.frame.width / 3) - 15), height:((self.view.frame.width / 3) - 15))
        default:
            return CGSize(width: 0, height: 0)
        }

    }
    
}
