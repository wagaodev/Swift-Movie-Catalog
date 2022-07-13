//
//  Movies.swift
//  movieList
//
//  Created by Wagner Barboza Goulart on 12/07/22.
//

import Foundation
import UIKit

class Movies {
    
    var title: String!
    var description : String!
    var image: UIImage!
    
    init(title: String, description: String, image: UIImage){
        self.title = title
        self.description = description
        self.image = image
    }
}
