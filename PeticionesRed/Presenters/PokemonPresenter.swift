//
//  PokemonPresenter.swift
//  PeticionesRed
//
//  Created by Alumnos on 13/12/22.
//

import Foundation

class PokemonPresenter {
    
    private let name: String
    private let detailUrl: URL?
    
    init(name: String, detailUrl: String) {
        self.name = name
        self.detailUrl = URL(string: detailUrl)
    }
    
    func getDetail() {
        if let url = detailUrl {
            Networking.shared.getPokemonDetail(
                detailUrl: url,
                success: { detail in
                    // TODO: update the cell with the image, name and type
                }, error: { error in
                    // TODO: remove this cell
                })

        }
    }
}
