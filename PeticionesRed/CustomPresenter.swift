//
//  CustomPresenter.swift
//  PeticionesRed
//
//  Created by Delfin Hernandez Gomez on 10/12/22.
//

import Foundation

class CustomPresenter {
    
    private let view: CustomView
    
    init(view: CustomView) {
        self.view = view
    }
    
    func loadImages() {
        loadImagesOnBackground()
    }
    
    private func loadImagesOnBackground() {
        
        DispatchQueue.global().async {
            while(true) {
                // EXAMPLE - DO NOT MODIFY
                self.showLoading(showLoading: true)
                if let imageData = Networking.shared.downloadImageUsingDataContent(){
                    self.onSuccess(imageData: imageData)
                    self.showLoading(showLoading: false)
                }
            
                sleep(10)
                
                //TODO: update the method, if needed, to retrieve the image and set it to the view
                self.showLoading(showLoading: true)
                Networking.shared.downloadImageUsingDataContent()
                
                // TODO: call method "onSuccess" in case of success
                sleep(10)

                //TODO: update the method, if needed, to retrieve the image and set it to the view
                self.showLoading(showLoading: true)
                Networking.shared.downloadImageUsingDataContent()
                
                // TODO: call method "onSuccess" in case of success
                sleep(10)
            }
        }
        
    }
    
    private func onSuccess(imageData: Data) {
        DispatchQueue.main.async {
            self.view.setImage(imageData: imageData)
        }
    }
    
    private func showLoading(showLoading: Bool) {
        DispatchQueue.main.async {
            self.view.showLoading(showLoading: showLoading)
        }
    }
}
