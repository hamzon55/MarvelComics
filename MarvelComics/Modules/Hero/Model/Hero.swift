//
//  Hero.swift
//  MarvelComics
//
//  Created by Hamza on 29/9/21.
//

import Foundation

struct Hero: Codable {
 var data: HeroClass
}

struct HeroClass: Codable {
    var results: [HeroCharacter]
 
    enum CodingKeys :  String, CodingKey {
        case results = "results"
     }
    
}

struct HeroCharacter: Codable,Identifiable { 
    var id: Int
    var name: String
    var thumbnail: Thumbnail
    var description: String

}

struct Thumbnail: Codable {
    var path: String
    var thumbnailExtension: Extension

    enum CodingKeys: String, CodingKey {
        case path
        case thumbnailExtension = "extension"
    }
    var fullName: String {
        get { return path + "." + thumbnailExtension.rawValue }
       }
}

enum Extension: String, Codable {
    case gif = "gif"
    case jpg = "jpg"
}


extension HeroCharacter {
    static func fake() -> Self {
       
        return HeroCharacter(id: 1, name: "SpiderMan", thumbnail: Thumbnail(path: "path", thumbnailExtension: .gif), description: "SpiderMan Hero")
    }
}

