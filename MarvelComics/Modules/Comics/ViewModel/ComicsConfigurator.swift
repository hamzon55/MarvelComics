//
//  ComicsCOnfigurator.swift
//  MarvelComics
//
//  Created by Hamza on 12/10/21.
//

import Foundation

final class ComicsConfigurator {
    
    public static func configureComicsView (
        with viewModel: ComicsViewModel = ComicsViewModel()
    ) -> ComicsView {
        
        let comicsView = ComicsView(viewModel: viewModel)
        return comicsView
    }
}
