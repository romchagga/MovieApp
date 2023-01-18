//
//  DetailViewModel.swift
//  MovieApp
//
//  Created by macbook on 18.01.2023.
//

import Foundation

class DetailViewModel {
    
    private var movie: Item
    
    var imageUrl: String {
        movie.image
    }
    
    var title: String {
        movie.title
    }
    
    var year: String {
        movie.year
    }
    
    var crew: String {
        movie.crew
    }
    
    var imdbRating: String {
        "IMDB rating: \(movie.imDBRating)"
    }
    
    var imdbRatingCount: String {
        "IMDB rating count: \(movie.imDBRatingCount)"
    }
    
    init(movie: Item) {
        self.movie = movie
    }
}
