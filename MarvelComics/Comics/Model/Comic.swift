//
//  Comic.swift
//  MarvelComics
//
//  Created by Hamza on 12/10/21.
//

import Foundation



// MARK: - Thumbnail
struct APIComicResult: Codable {
  
    var data: APIComicData
}

// MARK: - DataClass
struct APIComicData: Codable {
  
    var results: [Comic]
}

// MARK: - Result
struct Comic: Codable, Identifiable {
    var id: Int
    var digitalID: Int
    var title: String
    var issueNumber: Int
    var variantDescription: String
    var events: Characters

    enum CodingKeys: String, CodingKey {
        case id
        case digitalID = "digitalId"
        case title, issueNumber, variantDescription
        case events
    }
}

// MARK: - Characters
struct Characters: Codable {
    var available: Int
    var collectionURI: String
    var items: [Series]
    var returned: Int
}

// MARK: - Series
struct Series: Codable {
    var resourceURI: String
    var name: String
}

// MARK: - Creators
struct Creators: Codable {
    var available: Int
    var collectionURI: String
    var items: [CreatorsItem]
    var returned: Int
}

// MARK: - CreatorsItem
struct CreatorsItem: Codable {
    var resourceURI: String
    var name: String
    var role: Role
}

enum Role: String, Codable {
    case colorist = "colorist"
    case editor = "editor"
    case inker = "inker"
    case letterer = "letterer"
    case penciler = "penciler"
    case penciller = "penciller"
    case pencillerCover = "penciller (cover)"
    case writer = "writer"
}
