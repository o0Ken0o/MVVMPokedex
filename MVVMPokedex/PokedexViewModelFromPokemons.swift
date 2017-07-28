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
    
    let pokemons: [PokemonViewModel]
    
    let pokemonsCountTxt: String
    
    init(pokemons: [Pokemon]) {
        self.pokemonsModel = pokemons
        self.pokemons = pokemons.map{ PokemonViewModelFromPokemon(pokemon: $0) }
        self.pokemonsCountTxt = "\(self.pokemons.count) pokemons"
    }
    
    func didSelect(pokemon: PokemonViewModel) {
        print("didSelect \(pokemon.nameTxt)")
    }
}
