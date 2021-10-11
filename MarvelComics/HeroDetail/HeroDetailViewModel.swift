//
//  HeroDetailViewModel.swift
//  MarvelComics
//
//  Created by Hamza on 11/10/21.
//

import UIKit
import Combine

class HeroDetailViewModel: ObservableObject {
    
    // 2
    public let hero: HeroCharacter
    
    // 3
    private var cancellables = Set<AnyCancellable>()
    
    init(hero: HeroCharacter) {
        
        self.hero = hero
    }

}
