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
    func getHeros(query: String) -> AnyPublisher<Hero, Error>
}

final class HeroService: HerosServiceProtocol {
  
    
    let networker: NetworkerProtocol
    
    init(networker: NetworkerProtocol = Networker()) {
         self.networker = networker
     }
    
    func getHeros(query: String) -> AnyPublisher<Hero, Error> {
        let endpoint = Endpoint.heroes(query: query)
                return networker.get(type: Hero.self,
                            url: endpoint.url,
                            headers: endpoint.headers)
    }
    


}
