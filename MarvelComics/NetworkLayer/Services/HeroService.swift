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
    
    func getUsers() -> AnyPublisher<Users, Error>
    func getUsers(count: Int) -> AnyPublisher<Users, Error>
    func getUser(id: String) -> AnyPublisher<Hero, Error>
}

final class HeroService: HerosServiceProtocol {
    
    let networker: NetworkerProtocol
    
    init(networker: NetworkerProtocol = Networker()) {
         self.networker = networker
     }
    
    func getUsers() -> AnyPublisher<Users, Error> {
        let endpoint = Endpoint.users
                
                return networker.get(type: Users.self,
                                     url: endpoint.url,
                                     headers: endpoint.headers)
    }
    
    func getUsers(count: Int) -> AnyPublisher<Users, Error> {
        
        let endpoint = Endpoint.users(count: count)
               
               return networker.get(type: Users.self,
                                    url: endpoint.url,
                                    headers: endpoint.headers)
    }
    
    func getUser(id: String) -> AnyPublisher<Hero, Error> {
        
        let endpoint = Endpoint.user(id: id)
               
               return networker.get(type:
                                        Hero.self,
                                    url: endpoint.url,
                                    headers: endpoint.headers)
    }
}
