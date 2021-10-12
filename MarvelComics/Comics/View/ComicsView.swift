//
//  ComicsView.swift
//  MarvelComics
//
//  Created by Hamza on 12/10/21.
//

import SwiftUI

struct ComicsView: View {
    
    @ObservedObject var viewModel: ComicsViewModel
    var body: some View {
        NavigationView {
            
            List (viewModel.comics.data.results) { comic in
                
                ComicRowView(comic: comic)
                
            }.navigationBarTitle("Comics")
             .onAppear(perform: {
                viewModel.onAppear()
            })
        }
    }
}

struct ComicsView_Previews: PreviewProvider {
    static var previews: some View {
        ComicsView(viewModel: ComicsViewModel())
    }
}
