//
//  HeroViewModel.swift
//  MarvelComics
//
//  Created by Hamza on 4/10/21.
//

import Foundation
import Combine

class HerosViewModel: ObservableObject {
    // 1
    @Published public var heros: Hero =  Hero(data: HeroClass(results: []))
    @Published  var searchQuery = ""
    // 2
    private var herosService: HerosServiceProtocol
    private var cancellables = Set<AnyCancellable>()
    var setCancel: AnyCancellable? = nil
    // 3
    init( heros: Hero  =  Hero(data: HeroClass(results: [])) ,
    
        herosService: HerosServiceProtocol = HeroService()) {
        self.heros = heros
        self.herosService = herosService
        self.setCancel =  $searchQuery
            .removeDuplicates()
            .debounce(for: 0.5, scheduler: RunLoop.main)
            .sink(receiveValue:  { str in
                if str == "" {
                    
                }else {
                    self.getUsers(query: self.searchQuery)
                }
                
            })
    }
    
    // 4
    public func onAppear(query: String) {
        self.getUsers(query: query)
        
    }
    
    // 5
    private func getUsers(query: String) {
        let userQuery = query.replacingOccurrences(of: " ", with: "%20")
        herosService.getHeros(query: userQuery)
            .receive(on: DispatchQueue.main)
            .sink { completion in
                switch completion {
                case .failure(let error):
                    print(error)

                case .finished: break
                }
            } receiveValue: { [weak self] heros in

                self?.heros = heros
            }
            .store(in: &cancellables)
    }
}
