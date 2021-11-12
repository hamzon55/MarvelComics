//
//  DetailConfigurator.swift
//  MarvelComics
//
//  Created by Hamza on 11/10/21.
//

import Foundation

final class HeroDetailConfigurator {
    
    public static func configureHeroDetailView(
        with hero: HeroCharacter)
    -> HeroDetailView {
        
        let heroDetailView = HeroDetailView(
            viewModel: HeroDetailViewModel(hero: hero)
        )
        return heroDetailView
    }
}
