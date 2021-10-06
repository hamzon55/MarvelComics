//
//  Endpoint+URL.swift
//  MarvelComics
//
//  Created by Hamza on 21/9/21.
//

import Foundation


struct Endpoint {
    
    var path: String
    var queryItems: [URLQueryItem] = []
}


extension Endpoint {
    var url: URL {
        var components = URLComponents()
        components.scheme = "https"
        components.host = "dummyapi.io"
        components.path = "/data/v1" + path
        components.queryItems = queryItems
        
        guard let url = components.url else {
            preconditionFailure("Invalid URL components: \(components)")
        }
        
        return url
    }
    
    var headers: [String: Any] {
        return [
            "app-id": "6141d3043bd47b53f38c99b9"
        ]
    }
}
