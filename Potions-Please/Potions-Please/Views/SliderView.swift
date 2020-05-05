//
//  SliderView.swift
//  Potions-Please
//
//  Created by Sunni Tang on 5/5/20.
//  Copyright © 2020 Sunni Tang. All rights reserved.
//

import UIKit

class SliderView: UIView {
    
    var chevronImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.isUserInteractionEnabled = true
        return imageView
    }()
    
    //TODO: Replace with collectionViews, use Views for testing
    var typeCollectionView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemPink
        return view
    }()
    
    var itemCollectionView: UIView = {
        let view = UIView()
        view.backgroundColor = .purple
        return view
    }()
    
    var currentSliderViewState: SliderViewState = .half {
        didSet {
            self.setChevronImage(state: currentSliderViewState)
            // update constraints here
            self.layoutIfNeeded()
        }
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .green
        
        addSubViews()
        addConstraints()
        setChevronImage(state: currentSliderViewState)
        
        loadChevronGestures()
    }
    
    required init?(coder: NSCoder) {
          fatalError("init(coder:) has not been implemented")
    }
    
    func setChevronImage(state: SliderViewState) {
        switch state {
        case .opened:
            self.chevronImageView.image = UIImage(systemName: "chevron.compact.down")
        case .half:
            self.chevronImageView.image = UIImage(systemName: "minus")
        case .collapsed:
            self.chevronImageView.image = UIImage(systemName: "chevron.compact.up")
        }
        
    }
    
    func loadChevronGestures() {
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(gesturePerformed(gesture:)))
        swipeDown.direction = .down
    
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(gesturePerformed(gesture:)))
        swipeUp.direction = .up
        
        let tapped = UITapGestureRecognizer(target: self, action: #selector(gesturePerformed(gesture:)))
        
        self.chevronImageView.addGestureRecognizer(swipeDown)
        self.chevronImageView.addGestureRecognizer(swipeUp)
        self.chevronImageView.addGestureRecognizer(tapped)
    }

    @objc func gesturePerformed(gesture: UIGestureRecognizer) {
        print(gesture)
        
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            switch swipeGesture.direction {
            case .down:
                self.swipeDown(for: currentSliderViewState)
            case .up:
                self.swipeUp(for: currentSliderViewState)
            default:
                return
            }
        }
        
        
    }
        
    func swipeDown(for state: SliderViewState) {
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.80, initialSpringVelocity: 0, options: .curveEaseInOut, animations: { [weak self] in
            
            switch self?.currentSliderViewState {
            case .opened:
                self?.currentSliderViewState = .half
                print("slider is now at half")
            case .half:
                self?.currentSliderViewState = .collapsed
                print("slider is now collapsed")
            case .collapsed:
                print("slider is already collapsed")
                return
            default:
                return
            }
            
        }, completion: nil)
    }
    
    func swipeUp(for state: SliderViewState) {
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.80, initialSpringVelocity: 0, options: .curveEaseInOut, animations: { [weak self] in
            
            switch self?.currentSliderViewState {
            case .opened:
                print("slider is already opened")
                return
            case .half:
                self?.currentSliderViewState = .opened
                print("slider is now opened")
            case .collapsed:
                self?.currentSliderViewState = .half
                print("slider is half opened")
            default:
                return
            }
            
        }, completion: nil)
    }
    
    func tapped(for state: SliderViewState) {
        // TODO: Switch between states
        // TODO: rename half to partial state
    }

}

