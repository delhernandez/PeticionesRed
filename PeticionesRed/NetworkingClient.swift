//
//  NetworkingClient.swift
//  PeticionesRed
//
//  Created by Delfin Hernandez Gomez on 10/12/22.
//

import Foundation

class Networking {
    
    static let shared: Networking = Networking()
    
    private let imagesUrl = "https://picsum.photos/200/300"
    
    func downloadImageUsingDataContent() -> Data? {
        guard let url = URL(string: imagesUrl) else {
            return nil
        }
        
        do {
            return try! Data(contentsOf: url)
        }catch {
            return nil
        }
    }
    
    func downloadImageUsingURLSession() {
        // TODO: Use URLSession utils to download the image from the given URL
        
    }
    
    func downloadImageUsingAlamofire() {
        // TODO: Use Alamofire utils to download the image from the given URL
    }
}
