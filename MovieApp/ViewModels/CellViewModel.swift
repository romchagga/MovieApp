//
//  CellViewModel.swift
//  MovieApp
//
//  Created by macbook on 14.01.2023.
//

import Foundation

class CellViewModel {
    
    private let movie: Item
    
    var title: String {
        movie.title
    }
    
    var year: String {
        movie.year
    }
    
    var rating: String {
        "\(movie.imDBRating)/10"
    }
    
    var rank: String {
        movie.rank
    }
    
    var image: String {
        movie.image
    }
    
    
    init(movie: Item) {
        self.movie = movie
    }
}
