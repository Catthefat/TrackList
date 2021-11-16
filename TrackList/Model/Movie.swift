//
//  Movie.swift
//  TrackList
//
//  Created by kristians.tide on 16/11/2021.
//

import Foundation


struct Movie {
    let movie: String
    let year: String
    let poster: String
    
    static func createMovie() -> [Movie]{
        var movies: [Movie] = []
        
        let movie = DataManager.shared.movie //acceses DataManager File
        let year = DataManager.shared.year
        let poster = DataManager.shared.poster
        
        for index in 0..<movie.count {
            let movieEnd = Movie(movie: movie[index],
                            year: year[index],
                            poster: poster[index])
            movies.append(movieEnd)
        }
        
        return movies
    }
}
