//
//  HerosConfigurator.swift
//  MarvelComics
//
//  Created by Hamza on 6/10/21.
//

import Foundation


final class HerosConfigurator {
    
    public static func configureHerosView (
        with viewModel: HerosViewModel = HerosViewModel()
    ) -> HerosView {
        
        let herosView = HerosView(viewModel: viewModel)
        return herosView
    }
}
