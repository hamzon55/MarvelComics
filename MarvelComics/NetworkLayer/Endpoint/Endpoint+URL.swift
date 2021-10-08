//
//  Endpoint+URL.swift
//  MarvelComics
//
//  Created by Hamza on 21/9/21.
//

import Foundation
import Combine

struct Endpoint {
    
    var path: String
    var queryItems: [URLQueryItem] = []
    
}


extension Endpoint {

  
    var url: URL {
        var components = URLComponents()
        components.scheme = "https"
        
        components.host = "gateway.marvel.com"
        components.path = "/v1/public" + path
        components.queryItems = queryItems
        
        guard let url = components.url else {
            preconditionFailure("Invalid URL components: \(components)")
        }
        
        return url
    }
    
    var headers: [String: Any] {
        return [
//            "app-id": "b64b2574549f20514cddfe770e958632"
            :]
    }
}
