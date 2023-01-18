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
        //print(dataSource?.items)
        return dataSource?.items.count ?? 0
    }
    
    func getData(completion: @escaping () -> ()) {
        if isLoading.value ?? true {
            return
        }
        isLoading.value = true
        NetworkManager.getMovies { [weak self] movies in
            self?.isLoading.value = false
            self?.dataSource = movies
            completion()
        }
    }
    
    func createCellViewModel(forIndexPath indexPath: IndexPath) -> CellViewModel? {
        guard let dataSource = dataSource else {return nil}
        let movie = dataSource.items[indexPath.row]
        return CellViewModel(movie: movie)
    }
    
    func createDetailViewModel(indexPath: IndexPath) -> DetailViewModel? {
        guard let dataSource = dataSource else {return nil}
        return DetailViewModel(movie: dataSource.items[indexPath.row])
    }
}
