//
//  ViewController.swift
//  PeticionesRed
//
//  Created by Delfin Hernandez Gomez on 10/12/22.
//

import UIKit

class PokemonList: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    private var presenter: PokemonListPresenter!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        presenter = PokemonListPresenter(view: self)
        
        presenter.loadPokemons()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.getNumberOfRows(section: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "pokemonCell", for: indexPath) as? PokemonCell else {
            
            return UITableViewCell()
            
        }
        
        return cell
    }
    

    
 
    
}

