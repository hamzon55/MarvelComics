//
//  Endpoint.swift
//  MarvelComics
//
//  Created by Hamza on 21/9/21.
//

import Foundation
enum APIKeys: String {

    case ts = "ts"
    case apikey = "apikey"
    case hash = "hash"
    case apiKeyValue = "b64b2574549f20514cddfe770e958632"
    case hashValue = "f8cc0d1e4301a73cc2504f6a6983e9dd"
    case nameStart = "nameStartsWith"
}

struct Test {
    let timeStamp = String(Date().timeIntervalSince1970)
}

extension Endpoint {
    static func heroes(query: String) -> Self {
        return Endpoint(path: "/characters",
              queryItems: [
                URLQueryItem(name: APIKeys.ts.rawValue,value: "\(1)"),
                URLQueryItem(name: APIKeys.nameStart.rawValue,value: query),
                URLQueryItem(name: APIKeys.apikey.rawValue,value:                     APIKeys.apiKeyValue.rawValue),
                URLQueryItem(name: APIKeys.hash.rawValue, value: APIKeys.hashValue.rawValue)
                        ])
    }
    
    
    static func comics() -> Self {
        return Endpoint(path: "/comics",
              queryItems: [
                
                URLQueryItem(name: APIKeys.apikey.rawValue,value:                     APIKeys.apiKeyValue.rawValue),
                URLQueryItem(name: APIKeys.ts.rawValue,value: "\(1)"),
                URLQueryItem(name: APIKeys.hash.rawValue, value: APIKeys.hashValue.rawValue)
                        ])
    }
    
}
