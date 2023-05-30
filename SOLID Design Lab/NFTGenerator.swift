//
//  CreditCardProcessor.swift
//  SOLID Design Lab
//
//  Created by J Madsen on 5/12/23.
//

import Foundation
import UIKit

// Interface Segregation Principle
protocol Copyrightable {
    func assignCopyright(to user: User, of nft: NFT)
}

extension Copyrightable {
    func assignCopyright(to user: User, of nft: NFT) {
        nft.owner = user
    }
}

// Open/Closed Principle
protocol NFTGenerator {
    func validateUser(_ user: User?) -> Bool
    
    func generateNFT(name: String, price: Int, owner: User) -> NFT
    
}

class BoredApeGenerator: NFTGenerator, Copyrightable {
    func validateUser(_ user: User?) -> Bool {
        if user != nil {
            return true
        } else {
            return false
        }
    }
    
    func generateNFT(name: String, price: Int, owner: User) -> NFT {
        return BoredApeNFT(name: name, id: UUID(), price: price, image: UIImage(systemName: "photo.on.rectangle")!, owner: owner, typeOfMonkey: "", uglinessLevel: 10)
    }
    
}

class PudgyPigeonGenerator: NFTGenerator {
    func validateUser(_ user: User?) -> Bool {
        if user != nil {
            return true
        } else {
            return false
        }
    }
    
    func generateNFT(name: String, price: Int, owner: User) -> NFT {
        return PudgyPigeonNFT(name: name, id: UUID(), price: price, image: UIImage(systemName: "photo.on.rectangle")!, owner: owner, canFly: true)
    }
    
}
