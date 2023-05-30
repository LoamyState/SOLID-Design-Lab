//
//  NFTDatabase.swift
//  SOLID Design Lab
//
//  Created by J Madsen on 5/12/23.
//

import Foundation

// Single Responsibility Principle
protocol NFTDataStore {
    func saveNFT(_ nft: NFT)
    func fetchNFTs() -> [NFT]
}

class BoredApeDatabase: NFTDataStore {
    func saveNFT(_ nft: NFT) {
        print("NFT \(nft.name) saved! Congrats on your monkey!")
    }
    
    func fetchNFTs() -> [NFT] {
        return []
    }
    
    
}

class PudgyPigeonDatabase: NFTDataStore {
    func saveNFT(_ nft: NFT) {
        print("NFT \(nft.name) saved! Congrats on your pigeon!")
    }
    
    func fetchNFTs() -> [NFT] {
        return []
    }
    
}
