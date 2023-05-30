//
//  NFT.swift
//  SOLID Design Lab
//
//  Created by J Madsen on 5/12/23.
//

import Foundation
import UIKit

// Liskov Substitution Principle
class NFT {
    var name: String
    var id: UUID
    var image: UIImage
    var price: Int
    var owner: User
    
    init(name: String, id: UUID, price: Int, image: UIImage, owner: User) {
        self.name = name
        self.id = id
        self.price = price
        self.image = image
        self.owner = owner
    }
    
}

class BoredApeNFT: NFT {
    var typeOfMonkey: String
    var uglinessLevel: Int
    
    init(name: String, id: UUID, price: Int, image: UIImage, owner: User, typeOfMonkey: String, uglinessLevel: Int) {
        self.typeOfMonkey = typeOfMonkey
        self.uglinessLevel = uglinessLevel
        super.init(name: name, id: id, price: price, image: image, owner: owner)
    }
    
}

class PudgyPigeonNFT: NFT {
    var canFly: Bool
    
    init(name: String, id: UUID, price: Int, image: UIImage, owner: User, canFly: Bool) {
        self.canFly = canFly
        super.init(name: name, id: id, price: price, image: image, owner: owner)
    }
}
