//
//  Movies.swift
//  MovieApp
//
//  Created by macbook on 10.01.2023.
//

import Foundation
    
    struct Movies: Codable {
        let items: [Item]
        let errorMessage: String
    }

    // MARK: - Item
    struct Item: Codable {
        let id, rank, title, fullTitle: String
        let year: String
        let image: String
        let crew, imDBRating, imDBRatingCount: String

        enum CodingKeys: String, CodingKey {
            case id, rank, title, fullTitle, year, image, crew
            case imDBRating = "imDbRating"
            case imDBRatingCount = "imDbRatingCount"
        }
    }
