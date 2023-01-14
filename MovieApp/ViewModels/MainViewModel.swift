//
//  MainViewModel.swift
//  MovieApp
//
//  Created by macbook on 10.01.2023.
//

import Foundation

class MainViewModel {
    
    var isLoading: Observable<Bool> = Observable(false)
    var dataSource: Movies?
    
    func numberOfSections() -> Int {
        1
    }
    
    func numberOfRowsInSections() -> Int {
        10
    }
    
    func getData() {
        if isLoading.value ?? true {
            return
        }
        isLoading.value = true
        NetworkManager.getMovies { [weak self] movies in
            self?.isLoading.value = false
            self?.dataSource = movies
        }
    }
}
