//
//  HeroServices.swift
//  MarvelComics
//
//  Created by Hamza on 5/10/21.
//

import Foundation
import Combine

protocol HerosServiceProtocol: AnyObject {
    var networker: NetworkerProtocol { get }
    
    func getHeros() -> AnyPublisher<Hero, Error>
    func getUsers(count: Int) -> AnyPublisher<Hero, Error>
   // func getUser(id: String) -> AnyPublisher<HeroCharacter, Error>
}

final class HeroService: HerosServiceProtocol {
    
    let networker: NetworkerProtocol
    
    init(networker: NetworkerProtocol = Networker()) {
         self.networker = networker
     }
    
    func getHeros() -> AnyPublisher<Hero, Error> {
        let endpoint = Endpoint.heros
                
                return networker.get(type: Hero.self,
                                     url: endpoint.url,
                                     headers: endpoint.headers)
    }
    
    func getUsers(count: Int) -> AnyPublisher<Hero, Error> {
        
        let endpoint = Endpoint.users(count: count)
               
               return networker.get(type: Hero.self,
                                    url: endpoint.url,
                                    headers: endpoint.headers)
    }
    
//    func getUser(id: String) -> AnyPublisher<HeroCharacter, Error> {
//
//        let endpoint = Endpoint.user(id: id)
//
//               return networker.get(type:
//                                        HeroCharacter.self,
//                                    url: endpoint.url,
//                                    headers: endpoint.headers)
//    }
}
