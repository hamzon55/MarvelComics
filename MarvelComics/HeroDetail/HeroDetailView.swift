//
//  HeroDetailView.swift
//  MarvelComics
//
//  Created by Hamza on 11/10/21.
//

import SwiftUI

struct HeroDetailView: View {
    
    @ObservedObject var viewModel: HeroDetailViewModel

    
    var body: some View {
        HStack {
            Text(viewModel.hero.name)
            Text(viewModel.hero.description)
        }.onAppear()
        
        
    }
}

struct HeroDetailView_Previews: PreviewProvider {
    static var previews: some View {
      
        HeroDetailView(viewModel: HeroDetailViewModel(hero: HeroCharacter(id: 1, name: "test",
            thumbnail: Thumbnail(path: "test", thumbnailExtension: .gif),
              description: "test")))

    }
    
}

