//
//  PokedexViewModel.swift
//  MVVMPokedex
//
//  Created by Kam Hei Siu on 28/7/2017.
//  Copyright © 2017 Kam Hei Siu. All rights reserved.
//

import Foundation

protocol PokedexViewModel {
    var pokemons: [PokemonViewModel] { get }
}
