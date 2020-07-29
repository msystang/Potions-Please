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
            return categories.count
        case sliderView.itemCollectionView:
            return items.count
        default:
            return 0
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
        case sliderView.categoryCollectionView:
            let categoryCell = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryCell", for: indexPath) as! CategoryCollectionViewCell
            let category = categories[indexPath.row]
            
            categoryCell.categoryImageView.image = category.image
            
            return categoryCell
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
                let category = categories[indexPath.row]
            
                switch category.type {
                    case .bkgd:
                        items = Item.items.filter({ $0.type == .bkgd })
                    case .base:
                        items = Item.items.filter({ $0.type == .base })
                    case .bottom:
                        items = Item.items.filter({ $0.type == .bottom })
                    case .hat:
                        items = Item.items.filter({ $0.type == .hat })
                    case .onepiece:
                        items = Item.items.filter({ $0.type == .onepiece })
                    case .shoes:
                        items = Item.items.filter({ $0.type == .shoes })
                    case .top:
                        items = Item.items.filter({ $0.type == .top })
                    default:
                        items = Item.items.filter({ $0.image != nil })
                }
            
            
            case sliderView.itemCollectionView:
                let item = items[indexPath.row]
                
                switch item.type {
                    case .all:
                        break
                    case .bkgd:
                        dollView.backgroundImageView.image = item.image
                    case .base:
                        dollView.baseImageView.image = item.image
                    case .bottom:
                        dollView.bottomImageView.image = item.image
                        dollView.onePieceImageView.image = nil
                    case .hat:
                        dollView.hatImageView.image = item.image
                    case .onepiece:
                        dollView.onePieceImageView.image = item.image
                        dollView.topImageView.image = nil
                        dollView.bottomImageView.image = nil
                    case .shoes:
                        dollView.shoesImageView.image = item.image
                    case .top:
                        dollView.topImageView.image = item.image
                        dollView.onePieceImageView.image = nil
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
