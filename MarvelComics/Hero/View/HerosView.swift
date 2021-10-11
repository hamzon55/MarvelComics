//
//  HerosView.swift
//  MarvelComics
//
//  Created by Hamza on 11/10/21.
//

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
        NavigationView {
            // Table View
            List  {
                
             // TExtField Search
            TextField("Search", text: $viewModel.searchQuery).onAppear()
                    .padding(7)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                
                ForEach(viewModel.heros.data.results) { hero in
                    // navigate to Detail
                    NavigationLink(destination: HeroRouter.destinationForTappedHero(hero: hero)){
                    
                    HeroRowView(character: hero)
                }
        }
        }.navigationBarTitle("Heros")
        }
    }
}
struct HerosView_Previews: PreviewProvider {
    static var previews: some View {
        HerosView(viewModel: HerosViewModel())
    }
}

