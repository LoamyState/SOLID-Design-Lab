//
//  GenerationService.swift
//  SOLID Design Lab
//
//  Created by J Madsen on 5/12/23.
//

import Foundation

//Dependency Inversion
class GenerationService {
    private let generator: NFTGenerator
    
    init(generator: NFTGenerator) {
        self.generator = generator
    }
    
    func makeNFT(name: String, price: Int, owner: User) {
        let nft = generator.generateNFT(name: name, price: price, owner: owner)
    }
}

