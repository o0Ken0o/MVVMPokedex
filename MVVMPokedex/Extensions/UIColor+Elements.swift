//
//  UIColor+Elements.swift
//  MVVMPokedex
//
//  Created by Kam Hei Siu on 27/7/2017.
//  Copyright © 2017 Kam Hei Siu. All rights reserved.
//

import UIKit

extension UIColor {
    static func customColor(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
    }
    
    enum Poke {
        static let normal = UIColor.customColor(155, 155, 107)
        static let fire = UIColor.customColor(233, 118, 36)
        static let water = UIColor.customColor(91, 134, 239)
        static let electric = UIColor.customColor(243, 199, 27)
        static let grass = UIColor.customColor(105, 183, 66)
        static let flying = UIColor.customColor(158, 137, 221)
        static let psychic = UIColor.customColor(247, 71, 124)
    }
}
