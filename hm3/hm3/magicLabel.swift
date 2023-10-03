//
//  magicLabel.swift
//  hm3
//
//  Created by Alexandra Chupkova on 02.10.2023.
//

import Foundation
import UIKit

class MagicLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpView(){
        textAlignment = .center
        text = "This is label"
    }
}
