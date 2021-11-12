//
//  ComicsDetailConfigurator.swift
//  MarvelComics
//
//  Created by Hamza on 10/11/21.
//

import Foundation


final class ComicsDetailConfigurator {
    
    public static func configureComicDetailView(
        with comic:  Comic)
    -> ComicsDetailView {
        
        let comicsDetailView = ComicsDetailView(
            comicModel: ComicsDetailViewModel(comic: comic)
        )
        return comicsDetailView
    }
}
