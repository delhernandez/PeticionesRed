//
//  CustomPresenter.swift
//  PeticionesRed
//
//  Created by Delfin Hernandez Gomez on 10/12/22.
//

import Foundation

class PokemonListPresenter {
    
    private let view: PokemonList
    
    private var pokemonList: [Any] = []
    
    init(view: PokemonList) {
        self.view = view
    }
    
    func loadPokemons() {
        loadPokemonsOnBackground()
    }
    
    private func loadPokemonsOnBackground() {
        
        DispatchQueue.global().async {
            Networking.shared.getPokemonList(
                success: { response in
                    //TODO: self.pokemonList = response
                    self.onSuccess()
                }, error: { error in
                    // TODO show alert with error on the view
                })
            }
        
    }
    
    private func onSuccess() {
        DispatchQueue.main.async {
            self.view.tableView.reloadData()
        }
    }
    
    func getNumberOfRows(section: Int) -> Int {
        return pokemonList.count
    }
    
    func getPokemonItem(indexPath: IndexPath) -> Any {
        return pokemonList[indexPath.row]
    }
    
}
