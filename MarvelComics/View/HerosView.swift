//
//  HerosViewModel.swift
//  MarvelComics
//
//  Created by Hamza on 5/10/21.
//

import SwiftUI
import SDWebImageSwiftUI
struct HerosView: View {
    
    @State private var searchText = ""
    @ObservedObject var viewModel: HerosViewModel
    var body: some View {
            
        HStack(alignment: .top, spacing: 15){
            TextField("search ", text: $viewModel.searchQuery).onAppear(perform: {
                viewModel.onAppear(query:  "\( $viewModel.searchQuery)")
            })
        }.padding(.vertical,10)
        .padding(.horizontal)
        .background(Color.white)
        
      
            List(viewModel.heros.data.results) { hero in
                HeroRowView(character: hero)
             }
    }
    
}

struct HerosView_Previews: PreviewProvider {
    static var previews: some View {
        HerosView(viewModel: HerosViewModel())
    }
}

