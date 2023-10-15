//
//  Item.swift
//  hm4
//
//  Created by Alexandra Chupkova on 15.10.2023.
//

struct Item {
    
    let id: Int
    var nameLabel: String
    var avatarImageView: String
    
    mutating func setValues(other: Self) {
           self = other
       }
}
