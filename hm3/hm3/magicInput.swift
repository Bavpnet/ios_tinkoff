//
//  MagicInput.swift
//  hm3
//
//  Created by Alexandra Chupkova on 02.10.2023.
//

import Foundation
import UIKit

class MagicInput: UITextView {
    
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        setUpView()
       
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func setUpView(){
       
       backgroundColor = UIColor.systemGray
        layer.cornerRadius = 8.0
        textContainerInset = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
    }
}
