//
//  ViewController.swift
//  MVVMPokedex
//
//  Created by Kam Hei Siu on 27/7/2017.
//  Copyright © 2017 Kam Hei Siu. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnTapped(sender: UIButton) {
        performSegue(withIdentifier: "PokedexViewController", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier, identifier == "PokedexViewController" {
            if let destinationVC = segue.destination as? PokedexViewController {
                destinationVC.viewModel = PokedexViewModelFromPokemons(pokemons: pokemons)
            }
        }
    }
}

