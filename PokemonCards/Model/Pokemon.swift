//
//  Pokemon.swift
//  PokemonCards
//
//  Created by guntars.grants on 09/02/2021.
//

import Foundation


struct Pokemon: Decodable {
    let name: String
    var imageUrl: String?
   // let numberCard: String
    let number: String
    var hp: String?
    let rarity: String
    
    enum CodingKeys: String, CodingKey {
        case name
        case imageUrl
        //case numberCard = "number"
        case number
        case hp
        case rarity
    }
}

struct Card: Decodable {
    let cards: [Pokemon]
}
