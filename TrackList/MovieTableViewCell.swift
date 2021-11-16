//
//  MovieTableViewCell.swift
//  TrackList
//
//  Created by kristians.tide on 16/11/2021.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    
//    @IBOutlet weak var movieLbl: UILabel!
//    @IBOutlet weak var movieImageView: UIImageView!
//    var movie: Movie!
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        if movie != nil {
//            movieImageView.image = UIImage(named: movie.poster)
//            movieLbl.text = movie.movie + " - " + movie.year
//        }
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
