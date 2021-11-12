//
//  ComicRowView.swift
//  MarvelComics
//
//  Created by Hamza on 12/10/21.
//

import SwiftUI

import SwiftUI
import  SDWebImageSwiftUI

struct ComicRowView : View {
    let comic: Comic
    
    var body: some View {
        
        HStack(alignment: .top, spacing: 15){
            
            let extractedImg = URL(string: comic.thumbnail.fullName)
            WebImage(url: extractedImg)
                .resizable()
                .aspectRatio(contentMode: ContentMode.fit)
                .frame(width: 140, height: 140)
            
            VStack(alignment: .leading, spacing: 8, content: {
                
                Text(comic.title)
                    .font(.title3)
                    .fontWeight(.bold)
                Text(comic.resultDescription ?? " ")
                    .font(.caption)
                    .foregroundColor(.gray)
                    .lineLimit(4)
                    .multilineTextAlignment(.leading)
                
            })
            
            Spacer(minLength: 0)
        }
        
    }
}

struct ComicRowView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
