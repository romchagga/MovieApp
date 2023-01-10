//
//  NetworkManager.swift
//  MovieApp
//
//  Created by macbook on 10.01.2023.
//

import Foundation

class NetworkManager {
    
    static func getMovies(completionHandler: @escaping (Movies) -> () ){
        
        let urlString = NetworkConstants.shared.urlString + NetworkConstants.shared.apikey
        guard let url = URL(string: urlString) else {return}
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let data = data,
               let result = try? JSONDecoder().decode(Movies.self, from: data) {
                completionHandler(result)
            }
            
        }.resume()
    }
    
}
