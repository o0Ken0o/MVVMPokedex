//
//  PokemonViewModel.swift
//  MVVMPokedex
//
//  Created by Kam Hei Siu on 27/7/2017.
//  Copyright © 2017 Kam Hei Siu. All rights reserved.
//

import UIKit

protocol PokemonViewModel {
    var iconImage: UIImage? { get }
    var nameTxt: String { get }
    var heightTxt: String { get }
    var weightTxt: String { get }
    var bgColor: UIColor { get }
}
