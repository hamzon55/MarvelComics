//
//  HeroRouter.swift
//  MarvelComics
//
//  Created by Hamza on 11/10/21.
//

import SwiftUI

final class HeroRouter {
    
    public static func destinationForTappedHero(hero: HeroCharacter) -> some View {
        return HeroDetailConfigurator.configureHeroDetailView(with: hero)
    }
}
