//
//  Home.swift
//  MarvelComics
//
//  Created by Hamza on 12/10/21.
//

import SwiftUI

struct Home: View {
    @StateObject var heroData = HerosViewModel()
    @StateObject var comicData = ComicsViewModel()

    var body: some View {
        TabView {
            
            HerosView(viewModel: heroData).tabItem { Image("person.3.fill")
                Text("Characters")
                
            }.environmentObject(heroData)
            
            ComicsView(viewModel: comicData).tabItem { Image("books.vertical.fill")
                Text("Comics")
                
            }.environmentObject(comicData)
            
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
