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
    
    var fullTitle: String {
        movie.fullTitle
    }
    
    var year: String {
        movie.year
    }
    
    
    init(movie: Item) {
        self.movie = movie
    }
}
