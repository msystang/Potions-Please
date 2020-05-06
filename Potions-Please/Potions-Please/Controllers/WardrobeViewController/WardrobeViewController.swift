//
//  ViewController.swift
//  Potions-Please
//
//  Created by Sunni Tang on 5/5/20.
//  Copyright © 2020 Sunni Tang. All rights reserved.
//

import UIKit

class WardrobeViewController: UIViewController {
    
    // TODO: Create view for chevron to expand gesture surface
    var gestureView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        return view
    }()
    
    var wardrobeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .gray
        return imageView
    }()
    
    var chevronImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.isUserInteractionEnabled = true
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    var sliderView = SliderView()
    
    
    var currentSliderViewState: SliderViewState = .partial {
        didSet {
            self.setChevronImage(state: currentSliderViewState)
            // update constraints here
            self.view.layoutIfNeeded()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .yellow
        
        addSubviews()
        addConstraints()
        
        
        setChevronImage(state: currentSliderViewState)
        loadSliderGestures()
    }

    func setChevronImage(state: SliderViewState) {
        switch state {
        case .opened:
            self.chevronImageView.image = UIImage(systemName: "chevron.compact.down")
        case .partial:
            self.chevronImageView.image = UIImage(systemName: "minus")
        case .collapsed:
            self.chevronImageView.image = UIImage(systemName: "chevron.compact.up")
        }
        
    }
    
    func loadSliderGestures() {
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(gesturePerformed(gesture:)))
        swipeDown.direction = .down
    
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(gesturePerformed(gesture:)))
        swipeUp.direction = .up
        
        let tapped = UITapGestureRecognizer(target: self, action: #selector(gesturePerformed(gesture:)))
        
        self.gestureView.addGestureRecognizer(swipeDown)
        self.gestureView.addGestureRecognizer(swipeUp)
        self.gestureView.addGestureRecognizer(tapped)
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
                self?.currentSliderViewState = .partial
                print("slider is now at half")
            case .partial:
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
            case .partial:
                self?.currentSliderViewState = .opened
                print("slider is now opened")
            case .collapsed:
                self?.currentSliderViewState = .partial
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

