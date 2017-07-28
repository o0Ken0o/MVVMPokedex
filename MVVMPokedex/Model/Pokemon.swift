//
//  Pokemon.swift
//  MVVMPokedex
//
//  Created by Kam Hei Siu on 27/7/2017.
//  Copyright © 2017 Kam Hei Siu. All rights reserved.
//

import Foundation

import Foundation

struct Pokemon {
    let name: String
    let type: String
    let height: Double
    let weight: Double
    let image: String
    
    init(name: String, type: String, height: Double = 1, weight: Double = 1, image: String = "Eggs") {
        self.name = name
        self.type = type
        self.height = height
        self.weight = weight
        self.image = image
    }
}
