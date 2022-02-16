//
//  MovieDetailsViewController.swift
//  flix
//
//  Created by Rafael Eduardo Lintao on 2/12/22.
//

import UIKit
import AlamofireImage
import Alamofire

class MovieDetailsViewController: UIViewController {

    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    var movie: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //print(movie["title"])
        
        let baseURL = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterURL = URL(string: baseURL + posterPath)!
        let backdropPath = movie["backdrop_path"] as! String
        _ = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)!
        
        posterView.af_setImage(withURL: posterURL)
        backdropView.af_setImage(withURL: posterURL)
        
        
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
    }
    


}
