//
//  ComicsDetailViewModel.swift
//  MarvelComics
//
//  Created by Hamza on 10/11/21.
//

import SwiftUI
import SDWebImageSwiftUI
struct ComicsDetailView: View {
    
    @ObservedObject var comicModel: ComicsDetailViewModel

    var body: some View {
       

        VStack(alignment: .leading) {
            
            let extractedImg = URL(string: comicModel.comic.thumbnail.fullName)
            WebImage(url: extractedImg).resizable().aspectRatio(contentMode: ContentMode.fill).frame(width: 200, height: 200, alignment: .center).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            }.onAppear()
        
        VStack(alignment: .center) {
            
            Text(comicModel.comic.title).font(.headline).frame(width: .none, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text(comicModel.comic.resultDescription ?? "") }
        Spacer()
            
            
        }
    }


struct ComicsDetailView_Previews: PreviewProvider {
    static var previews: some View {
      
        ComicsDetailView(comicModel: ComicsDetailViewModel(comic: Comic(id: 1, digitalID: 1, title: "test", issueNumber: 1, variantDescription: "test", thumbnail: Thumbnail(path: "test", thumbnailExtension: .gif), resultDescription: "test")))
    }
}
