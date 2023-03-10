//
//  Constants.swift
//  MovieApp
//
//  Created by macbook on 10.01.2023.
//

import Foundation

class NetworkConstants {
    
    static let shared = NetworkConstants()
    
    private init() {
        
    }
    
    var apikey: String {
        get {
            // только 100 запросов в день
            "k_gb24i5yt"
        }
    }
    
    var urlString: String {
        get {
            "https://imdb-api.com/en/API/MostPopularTVs/"
            //"https://imdb-api.com/en/API/MostPopularMovies/"
        }
    }
    
}
