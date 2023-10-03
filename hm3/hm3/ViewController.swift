//
//  ViewController.swift
//  hm3
//
//  Created by Alexandra Chupkova on 02.10.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    private let titleLabel = MagicLabel()
    private let titleLabel2 = MagicLabel()
    private let magicBtn = MagicButton()
    private let magicInput = MagicInput()
    private let magicInput2 = MagicInput()
    
    let magicImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "photo")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("View Controller: viewDidLoad")
        
        magicImage.contentMode = .scaleAspectFit
        
        view.addSubview(titleLabel)
        view.addSubview(titleLabel2)
        view.addSubview(magicBtn)
        view.addSubview(magicInput)
        view.addSubview(magicInput2)
        view.addSubview(magicImage)
        
        
        
        
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel2.translatesAutoresizingMaskIntoConstraints = false
        magicBtn.translatesAutoresizingMaskIntoConstraints = false
        magicInput.translatesAutoresizingMaskIntoConstraints = false
        magicInput2.translatesAutoresizingMaskIntoConstraints = false
        magicImage.translatesAutoresizingMaskIntoConstraints = false
        
        
        addConstraints()
        
        magicBtn.addTarget(self, action: #selector(magicButtonTapped), for: .touchUpInside)
        
    }
    
    @objc private func magicButtonTapped() {
        print("View Controller: button clicked")
        titleLabel.text =  magicInput.text
        titleLabel2.text = magicInput2.text
        magicInput.text = ""
        magicInput2.text = ""
    }
    
    @objc private func addConstraints(){
        
        
        print("View Controller: Add constraints")
        
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: titleLabel, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: titleLabel, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: -220),
            NSLayoutConstraint(item: titleLabel, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 96),
            NSLayoutConstraint(item: titleLabel, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 180)
        ])
        
        
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: titleLabel2, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: titleLabel2, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: -250),
            NSLayoutConstraint(item: titleLabel2, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 96),
            NSLayoutConstraint(item: titleLabel2, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 180)
        ])
        
        
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: magicBtn, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: magicBtn, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 32),
            
            NSLayoutConstraint(item: magicBtn, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 32),
            
            NSLayoutConstraint(item: magicBtn, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: .greatestFiniteMagnitude)
            
        ])
        
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: magicInput, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: magicInput, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: -120),
            
            NSLayoutConstraint(item: magicInput, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 32),
            
            NSLayoutConstraint(item: magicInput, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: 72)
            
        ])
        
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: magicInput2, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: magicInput2, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: -180),
            
            NSLayoutConstraint(item: magicInput2, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 32),
            
            NSLayoutConstraint(item: magicInput2, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: 72)
            
        ])
        
        NSLayoutConstraint.activate([
            
            NSLayoutConstraint(item: magicImage, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: magicImage, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 240),
            NSLayoutConstraint(item: magicImage, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 300),
            
            NSLayoutConstraint(item: magicImage, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: 200)
        ])
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("View Controller: viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("View Controller: viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("View Controller: viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("View Controller: viewDidDisappear")
    }
    
}



