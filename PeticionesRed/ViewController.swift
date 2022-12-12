//
//  ViewController.swift
//  PeticionesRed
//
//  Created by Delfin Hernandez Gomez on 10/12/22.
//

import UIKit

class CustomView: UIViewController {
    
    private var presenter: CustomPresenter!
    
    @IBOutlet weak var imageIV: UIImageView!
    @IBOutlet weak var loadingAI: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        presenter = CustomPresenter(view: self)
        
        presenter.loadImages()
    }
    
    func setImage(imageData: Data) {
        if let image = UIImage(data: imageData){
            imageIV.image = image
       }
    }
    
    func showLoading(showLoading: Bool) {
        if(showLoading) {
            self.imageIV.isHidden = true
            self.loadingAI.isHidden = false
            self.loadingAI.startAnimating()
        } else {
            self.loadingAI.isHidden = true
            self.loadingAI.stopAnimating()
            self.imageIV.isHidden = false
        }
    }
    
}

