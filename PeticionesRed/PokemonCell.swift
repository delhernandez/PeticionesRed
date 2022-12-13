//
//  PokemonCell.swift
//  PeticionesRed
//
//  Created by Alumnos on 13/12/22.
//

import Foundation
import UIKit

class PokemonCell: UITableViewCell {
    
    @IBOutlet weak var pokemonImageIV: UIImageView!
    @IBOutlet weak var pokemonName: UILabel!
    @IBOutlet weak var pokemonType: UILabel!
    
    private var presenter: PokemonPresenter?
    
    required init?(coder: NSCoder) {
        self.pokemonImageIV.image = UIImage(named: "placeholder")
        super.init(coder: coder)
    }
    
    func inject(presenter: PokemonPresenter){
        self.presenter = presenter
        presenter.getDetail()
    }
  
}
