//
//  DetailMovieViewController.swift
//  movieList
//
//  Created by Wagner Barboza Goulart on 12/07/22.
//

import Foundation
import UIKit


class DetailMovieViewController: UIViewController {
    
    
    @IBOutlet weak var movieImageView: UIImageView!
    
    
    @IBOutlet weak var titleImageView: UILabel!
    
    
    @IBOutlet weak var detailImageView: UILabel!
    
    var movie: Movies!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieImageView.image = movie.image
        titleImageView.text = movie.title
        detailImageView.text = movie.description
    }
}
