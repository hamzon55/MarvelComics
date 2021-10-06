//
//  Hero.swift
//  MarvelComics
//
//  Created by Hamza on 29/9/21.
//

import Foundation

struct Users: Codable {
    let data: [Hero]
}

struct Hero: Codable, Identifiable {
    
    let id: String?
    let title: String?
    let firstName: String?
}

extension Hero {
    
    static func fake() -> Self {
        
        return Hero(id: "123", title: "example Title", firstName: "First Name")
    }
}

