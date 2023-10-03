//
//  MagicButton.swift
//  hm3
//
//  Created by Alexandra Chupkova on 02.10.2023.
//

import Foundation
import UIKit

class MagicButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpView(){
        setTitle("Тыкни на кнопку", for: .normal)
        contentVerticalAlignment = .center
        contentHorizontalAlignment = .center
        backgroundColor =  .systemPurple
        layer.cornerRadius = 16
    }
}
