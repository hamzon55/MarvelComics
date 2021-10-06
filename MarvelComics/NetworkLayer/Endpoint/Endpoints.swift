//
//  Endpoint.swift
//  MarvelComics
//
//  Created by Hamza on 21/9/21.
//

import Foundation

extension Endpoint {
    static var heros: Self {
        
        return Endpoint(path: "/characters",
                        queryItems: [
                            URLQueryItem(name: "ts",
                                         value: "\(1)"),
                            URLQueryItem(name: "apikey",
                                         value: "b64b2574549f20514cddfe770e958632"),
                            URLQueryItem(name: "hash",
                                         value: "f8cc0d1e4301a73cc2504f6a6983e9dd")
            ]
        )
    }
    
    static func users(count: Int) -> Self {
        return Endpoint(path: "/user",
                        queryItems: [
                            URLQueryItem(name: "limit",
                                         value: "\(count)")
            ]
        )
    }
    
    static func user(id: String) -> Self {
        return Endpoint(path: "/user/\(id)")
    }
}


//
//return Endpoint(path: "/comics"
////                      queryItems: [
////                        URLQueryItem(name: "ts", value: "\(1)"),
////                        URLQueryItem(name: "apikey", value: "b64b2574549f20514cddfe770e958632"),
////                        URLQueryItem(name: "hash", value: "f8cc0d1e4301a73cc2504f6a6983e9dd")
////
////                      ]
//                )
