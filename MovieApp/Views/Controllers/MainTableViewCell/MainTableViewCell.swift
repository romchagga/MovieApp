//
//  MainTableViewCell.swift
//  MovieApp
//
//  Created by macbook on 14.01.2023.
//

import UIKit
import SDWebImage

class MainTableViewCell: UITableViewCell {
    
    static func register() -> UINib {
        UINib(nibName: "MainTableViewCell", bundle: nil)
    }

    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var filmName: UILabel!
    @IBOutlet weak var filmDate: UILabel!
    @IBOutlet weak var filmRate: UILabel!
    @IBOutlet weak var filmRank: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
        setUpView()
    }
    
    func setUpView() {
        backView.backgroundColor = UIColor(red: 202/255, green: 191/255, blue: 226/255, alpha: 1)
        backView.layer.borderColor = UIColor.label.cgColor
        backView.layer.borderWidth = 1
        backView.layer.cornerRadius = 10
        
        posterImageView.layer.cornerRadius = 5
    }
    
    func setUpCell(cellViewModel: CellViewModel) {
        filmName.text = cellViewModel.title
        filmDate.text = cellViewModel.year
        filmRate.text = cellViewModel.rating
        filmRank.text = cellViewModel.rank
        self.posterImageView.sd_setImage(with: URL(string: cellViewModel.image))
    }
    
    
}
