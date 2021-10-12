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
        
        List (viewModel.comics.data.results) { comic in
            
            Text(comic.title)
                
        }.onAppear(perform: {
            viewModel.onAppear()
        })
    }
    
}

struct ComicsView_Previews: PreviewProvider {
    static var previews: some View {
        ComicsView(viewModel: ComicsViewModel())
    }
}
