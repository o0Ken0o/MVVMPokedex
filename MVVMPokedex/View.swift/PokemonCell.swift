//
//  PokemonCell.swift
//  MVVMPokedex
//
//  Created by Kam Hei Siu on 27/7/2017.
//  Copyright © 2017 Kam Hei Siu. All rights reserved.
//

import UIKit

class PokemonCell: UITableViewCell {
    
    static let CellIdentifer = "PokemonCell"
    static let CellHeight: CGFloat = 80
    
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
