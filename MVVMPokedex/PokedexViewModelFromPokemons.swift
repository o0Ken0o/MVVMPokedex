//
//  PokedexViewModelFromPokemons.swift
//  MVVMPokedex
//
//  Created by Kam Hei Siu on 28/7/2017.
//  Copyright © 2017 Kam Hei Siu. All rights reserved.
//

import Foundation

struct PokedexViewModelFromPokemons: PokedexViewModel {
    let pokemonsModel: [Pokemon]
    
    // MARK: Protocol PokedexViewModel
    
    let pokemons: [PokemonViewModel]
    
    init(pokemons: [Pokemon]) {
        self.pokemonsModel = pokemons
        self.pokemons = pokemons.map{ PokemonViewModelFromPokemon(pokemon: $0) }
    }
}
