//
//  PokemonViewModelFromPokemon.swift
//  MVVMPokedex
//
//  Created by Kam Hei Siu on 27/7/2017.
//  Copyright © 2017 Kam Hei Siu. All rights reserved.
//

import UIKit

enum Type: String {
    case Normal, Fire, Water, Electric, Grass, Flying, Psychic
}

struct PokemonViewModelFromPokemon: PokemonViewModel {
    let pokemon: Pokemon
    
    let iconImage: UIImage?
    let nameTxt: String
    let heightTxt: String
    let weightTxt: String
    let bgColor: UIColor
    
    init(pokemon: Pokemon) {
        self.pokemon = pokemon
        
        self.iconImage = UIImage(named: pokemon.image)
        self.nameTxt = "--o0 \(pokemon.name) 0o--"
        self.heightTxt = "\(pokemon.height) m"
        self.weightTxt = "\(pokemon.weight) kg"
        self.bgColor = PokemonViewModelFromPokemon.getBgColor(type: pokemon.type)
    }
    
    fileprivate static func getBgColor(type: String) -> UIColor {
        var color = UIColor.Poke.normal
        if let type = Type(rawValue: type) {
            switch type {
                
            case .Normal:
                color = UIColor.Poke.normal
            
            case .Fire:
                color = UIColor.Poke.fire
                
            case .Water:
                color = UIColor.Poke.water
                
            case .Electric:
                color = UIColor.Poke.electric
                
            case .Grass:
                color = UIColor.Poke.grass
                
            case .Flying:
                color = UIColor.Poke.flying
                
            case .Psychic:
                color = UIColor.Poke.psychic
        
            }
        }
        
        return color
    }
}
