//
//  ViewController.swift
//  movieList
//
//  Created by Wagner Barboza Goulart on 12/07/22.
//

import UIKit

private let reuseIdentifier = "MovieViewController"

class ViewController: UITableViewController {
    
    var movies: [Movies] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var movie: Movies
        
        
        movie = Movies(title: "007 - Quantum Of Solace", description: _007, image: #imageLiteral(resourceName: "filme1") )
        movies.append(movie)
        
        movie = Movies(title: "Star Wars", description: star, image: #imageLiteral(resourceName: "filme2"))
        movies.append(movie)
        
        movie = Movies(title: "Impacto Mortal", description: impact, image: #imageLiteral(resourceName: "filme3") )
        movies.append(movie)
        
        movie = Movies(title: "Deadpool", description: deadpool, image: #imageLiteral(resourceName: "filme4") )
        movies.append(movie)
        
        movie = Movies(title: "O Regresso", description: revenant, image: #imageLiteral(resourceName: "filme5"))
        movies.append(movie)
        
        movie = Movies(title: "A herdeira", description: heiress, image: #imageLiteral(resourceName: "filme6") )
        movies.append(movie)
        
        movie = Movies(title: "Caçadores de emoção", description: hunt, image: #imageLiteral(resourceName: "filme7"))
        movies.append(movie)
        
        movie = Movies(title: "Regresso do mal", description: evil, image: #imageLiteral(resourceName: "filme8") )
        movies.append(movie)
        
        movie = Movies(title: "Tarzan", description: tarzan, image: #imageLiteral(resourceName: "filme9"))
        movies.append(movie)
        
        movie = Movies(title: "Hardcore", description: hardcore, image: #imageLiteral(resourceName: "filme10"))
        movies.append(movie)
        
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let movie = movies[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier:
                                                    reuseIdentifier, for: indexPath) as! movieCell
        cell.iv.image = movie.image
        cell.titleLabel.text = movie.title
        cell.descriptionLabel.text = movie.description
        cell.iv.layer.cornerRadius = 42
        cell.iv.clipsToBounds = true
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "movieDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let movieSelected = self.movies[indexPath.row]
                let viewControllerDestination = segue.destination as! DetailMovieViewController
                viewControllerDestination.movie = movieSelected
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }


}

