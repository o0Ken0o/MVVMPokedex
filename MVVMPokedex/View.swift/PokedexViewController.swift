//
//  PokedexViewController.swift
//  MVVMPokedex
//
//  Created by Kam Hei Siu on 27/7/2017.
//  Copyright © 2017 Kam Hei Siu. All rights reserved.
//

import UIKit

class PokedexViewController: UIViewController {
    
    @IBOutlet weak var noOfPokemonsLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var viewModel: PokedexViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "PokemonCell", bundle: nil), forCellReuseIdentifier: PokemonCell.CellIdentifer)
        tableView.dataSource = self
        tableView.delegate = self
        
        reloadData()
    }
    
    func reloadData() {
        if !isViewLoaded {
            return
        }
        
        viewModel?.pokemons.bindAndFire({ [unowned self] (pokemonViewModels) in self.tableView.reloadData() })
        viewModel?.pokemonsCountTxt.bindAndFire({ [unowned self] in self.noOfPokemonsLabel.text = $0 })
    }
}

extension PokedexViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        guard let viewModel = viewModel else { return 0 }
        
        return viewModel.pokemons.value.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let pokemonViewModel = viewModel?.pokemons.value[indexPath.row] else { return PokemonCell() }
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: PokemonCell.CellIdentifer, for: indexPath) as? PokemonCell {
            cell.configure(viewModel: pokemonViewModel)
            return cell
        }
        
        let cell = PokemonCell()
        cell.configure(viewModel: pokemonViewModel)
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return PokemonCell.CellHeight
    }
}

extension PokedexViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        viewModel?.didSelect(indexPath: indexPath)
    }
}
