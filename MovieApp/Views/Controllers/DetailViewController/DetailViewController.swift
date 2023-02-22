//
//  DetailViewController.swift
//  MovieApp
//
//  Created by macbook on 18.01.2023.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var crewLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var ratinCountLabel: UILabel!
    
    var detailViewModel: DetailViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configViews()
    }
    
    func configViews() {
        view.backgroundColor = UIColor(red: 202/255, green: 191/255, blue: 226/255, alpha: 1)
        
        guard let detailViewModel = detailViewModel else {return}
        
        self.title = detailViewModel.title
        self.imageView.sd_setImage(with: URL(string: detailViewModel.imageUrl))
        self.titleLabel.text = detailViewModel.title
        self.yearLabel.text = detailViewModel.year
        self.crewLabel.text = detailViewModel.crew
        self.ratingLabel.text = detailViewModel.imdbRating
        self.ratinCountLabel.text = detailViewModel.imdbRatingCount
    }
    
}
