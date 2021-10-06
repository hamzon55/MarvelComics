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
    @Published public var heros: Hero =  Hero(code: 0, status: " ", copyright: " ", attributionText: "", attributionHTML: "", etag: " ", data: HeroClass(results: []))
    
    // 2
    private var herosService: HerosServiceProtocol
    private var cancellables = Set<AnyCancellable>()
    
    // 3
    init(heros: Hero  =  Hero(code: 0, status: " ", copyright: " ", attributionText: "", attributionHTML: "", etag: " ", data: HeroClass(results: [])) ,
         herosService: HerosServiceProtocol = HeroService()) {
        
        self.heros = heros
        self.herosService = herosService
    }
    
    // 4
    public func onAppear() {
        self.getUsers()
    }
    
    // 5
    private func getUsers() {
        herosService.getHeros()
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
