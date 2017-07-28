//
//  Dynamic.swift
//  MVVMPokedex
//
//  Created by Kam Hei Siu on 28/7/2017.
//  Copyright © 2017 Kam Hei Siu. All rights reserved.
//

import Foundation

struct Dynamic<T> {
    typealias Listener = (T) -> ()
    var listener: Listener?
    
    mutating func bind(_ listener: @escaping Listener) {
        self.listener = listener
    }
    
    mutating func bindAndFire(_ listener: @escaping Listener) {
        self.listener = listener
        listener(value)
    }
    
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    init(_ v: T) {
        value = v
    }
}
