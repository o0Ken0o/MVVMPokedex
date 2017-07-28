//
//  PokedexViewModelFromPokemons.swift
//  MVVMPokedex
//
//  Created by Kam Hei Siu on 28/7/2017.
//  Copyright © 2017 Kam Hei Siu. All rights reserved.
//

import Foundation

struct PokedexViewModelFromPokemons: PokedexViewModel {
    var pokemonsModel: [Pokemon]
    
    var pokemons: Dynamic<[PokemonViewModel]>
    
    var pokemonsCountTxt: Dynamic<String>
    
    init(pokemons: [Pokemon]) {
        self.pokemonsModel = pokemons
        self.pokemons = Dynamic(pokemons.map{ PokemonViewModelFromPokemon(pokemon: $0) })
        self.pokemonsCountTxt = Dynamic("\(self.pokemons.value.count) pokemons")
    }
    
    mutating func didSelect(indexPath: IndexPath) {
        let pokemonModel = pokemonsModel[indexPath.row]
        let pokemonViewModel = pokemons.value[indexPath.row]
        
        pokemonsModel.append(pokemonModel)
        pokemons.value.append(pokemonViewModel)
        self.pokemonsCountTxt.value = "\(self.pokemons.value.count) pokemons"
    }
}
