//
//  PokemonDetailViewController.swift
//  PokemonCards
//
//  Created by guntars.grants on 09/02/2021.
//

import UIKit

class PokemonDetailViewController: UIViewController {

    var pokemon: Pokemon?
    
    
    @IBOutlet weak var pokemonRarityLabel: UILabel!
    
    @IBOutlet weak var pokemonHPLabel: UILabel!
    
    @IBOutlet weak var pokemonNameLabel: UILabel!
    
    @IBOutlet weak var pokemonImage: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let pokemon = pokemon {
            ImageController.getImage(for: pokemon.imageUrl ?? "") { (image) in
                self.pokemonImage.image = image
            }
        }else{
            print("pokemon image is nil")
        }
        
        if let pokemon = pokemon {
            pokemonNameLabel.text = pokemon.name
            pokemonHPLabel.text = "HP: \(pokemon.hp ?? "")"
            pokemonRarityLabel.text = pokemon.rarity
        }else{
            print("pokemon name label is nil")
        }
    }
}

