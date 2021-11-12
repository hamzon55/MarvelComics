//
//  HeroDetailView.swift
//  MarvelComics
//
//  Created by Hamza on 11/10/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct HeroDetailView: View {
    
    @ObservedObject var viewModel: HeroDetailViewModel

    
    var body: some View {
        VStack(alignment: .leading) {
            let extractedImg = URL(string: viewModel.hero.thumbnail.fullName)
            WebImage(url: extractedImg).resizable().aspectRatio(contentMode: ContentMode.fill).frame(width: 200, height: 200, alignment: .center).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            }.onAppear()
          
            VStack(alignment: .center) {
                Text(viewModel.hero.name).font(.headline).frame(width: .none, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
     
                Text(viewModel.hero.description.htmlStripped)

            }
            Spacer()
        
    }
}

struct HeroDetailView_Previews: PreviewProvider {
    static var previews: some View {
      
        HeroDetailView(viewModel: HeroDetailViewModel(hero: HeroCharacter.fake()))

    }
    
}
