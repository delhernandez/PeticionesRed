//
//  NetworkingClient.swift
//  PeticionesRed
//
//  Created by Delfin Hernandez Gomez on 10/12/22.
//

import Foundation

class Networking {
    
    static let shared: Networking = Networking()
    
    private let imagesUrl = "https://pokeapi.co/api/v2/pokemon/?offset=0&limit=200"
    

    func getPokemonList(success: @escaping (Any) -> Void, error: @escaping (Error) -> Void) {
        // TODO: Use URLSession utils to download the list of pokemons
        
    }
    
    func getPokemonDetail(detailUrl: URL, success: @escaping (Any) -> Void, error: @escaping (Error) -> Void) {
        // TODO: Use URLSession utils to download the pokemon detail
    }
}
