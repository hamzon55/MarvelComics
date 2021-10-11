//
//  HeroRowView.swift
//  MarvelComics
//
//  Created by Hamza on 8/10/21.
//

import SwiftUI
import  SDWebImageSwiftUI
struct HeroRowView : View {
    let character: HeroCharacter

    var body: some View {
        
        HStack(alignment: .top, spacing: 15){

        let extractedImg = URL(string: character.thumbnail.fullName)
        
        WebImage(url: extractedImg).resizable().aspectRatio(contentMode: ContentMode.fill).frame(width: 150, height: 150)
            
            VStack(alignment: .leading, spacing: 8, content: {
               
                Text(character.name)
                    .font(.title3).fontWeight(.bold)
            
                Text(character.description)
                    .font(.caption).foregroundColor(.gray).lineLimit(4)
                    .multilineTextAlignment(.leading)
                })
        
        Spacer(minLength: 0)
        }
        
    }
}
