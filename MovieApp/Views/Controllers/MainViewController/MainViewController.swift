//
//  MainViewController.swift
//  MovieApp
//
//  Created by macbook on 10.01.2023.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    let mainViewModel = MainViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        bindViewModel()
    }
    
    func setupView() {
        view.backgroundColor = .white
        self.title = "Main"
        setupTableView()
    }
    
    func bindViewModel() {
        mainViewModel.isLoading.bind { [weak self] isLoading in
            guard let self = self, let isLoading = isLoading else {return}
            DispatchQueue.main.async {
                if isLoading {
                    self.activityIndicator.startAnimating()
                } else {
                    self.activityIndicator.stopAnimating()
                }
            }
        }
    }
    
}
