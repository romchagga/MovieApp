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
        getData()
    }
    
    func setupView() {
        self.title = "Main"
        setupTableView()
        view.backgroundColor = UIColor(red: 25/255, green: 20/255, blue: 59/255, alpha: 1)
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
    
    func getData() {
        mainViewModel.getData {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
}
