//
//  HerosViewModel.swift
//  MarvelComics
//
//  Created by Hamza on 5/10/21.
//

import SwiftUI

struct HerosView: View {
    
    @ObservedObject var viewModel: HerosViewModel
    var body: some View {

        List(viewModel.heros.data.results) { hero in
            Text(hero.name)
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
