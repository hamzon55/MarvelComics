//
//  HerosViewModel.swift
//  MarvelComics
//
//  Created by Hamza on 5/10/21.
//

import SwiftUI
import SDWebImageSwiftUI
struct HerosView: View {
    
    @ObservedObject var viewModel: HerosViewModel
    var body: some View {

        List(viewModel.heros.data.results) { hero in
            Text(hero.name)
            let extractedImg = URL(string: hero.thumbnail.fullName)
            WebImage(url: extractedImg).resizable().aspectRatio(contentMode: ContentMode.fit)

        
        }.onAppear(perform: {
            viewModel.onAppear()
        })
    }
    
}

struct HerosView_Previews: PreviewProvider {
    static var previews: some View {
        HerosView(viewModel: HerosViewModel())
    }
}
