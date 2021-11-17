//
//  MovieViewController.swift
//  TrackList
//
//  Created by kristians.tide on 17/11/2021.
//

import UIKit

class MovieViewController: UIViewController {

    
    
    var movie: Movie!
    
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var MovieImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        if movie != nil {
            MovieImageView.image = UIImage(named: movie.poster)
            movieNameLabel.text = movie.movie + " - " + movie.year
        }
        
        
        
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
