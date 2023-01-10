//
//  MainViewController.swift
//  MovieApp
//
//  Created by macbook on 10.01.2023.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let mainViewModel = MainViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

       setupView()
        
    }
    
    func setupView() {
        view.backgroundColor = .white
        self.title = "Main"
        setupTableView()
    }
    
}
