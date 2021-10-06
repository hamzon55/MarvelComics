//
//  Hero.swift
//  MarvelComics
//
//  Created by Hamza on 29/9/21.
//

import Foundation


struct HeroCharacter: Codable,Identifiable {
 
    var id: Int
    var name: String
 
}

struct Hero: Codable {
        var code: Int
        var status, copyright, attributionText, attributionHTML: String
        var etag: String
        var data: HeroClass
}

struct HeroClass: Codable {
    var results: [HeroCharacter]
 
    enum CodingKeys :  String, CodingKey {
        case results = "results"
        
     }
    
}



