//
//  HeroRowView.swift
//  MarvelComics
//
//  Created by Hamza on 11/10/21.
//



import SwiftUI
import  SDWebImageSwiftUI

struct HeroRowView : View {
    let character: HeroCharacter
    
    var body: some View {
        
        let extractedImg = URL(string: character.thumbnail.fullName)
        
        HStack(alignment: .top, spacing: 15){
        
            WebImage(url: extractedImg)
                    .resizable()
                    .aspectRatio(contentMode: ContentMode.fit)
                    .frame(width: 140, height: 140)
        
            VStack(alignment: .leading, spacing: 8, content: {
              
            Text(character.name)
                    .font(.title3)
                    .fontWeight(.bold)
            Text(character.description)
                    .font(.caption)
                    .foregroundColor(.gray)
                    .lineLimit(4)
                    .multilineTextAlignment(.leading)
            })
            Spacer(minLength: 0)
        }
    }
}

struct HeroRowView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
