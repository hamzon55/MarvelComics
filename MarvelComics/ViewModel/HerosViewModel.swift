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
    @Published public var users: Users = Users(data: [])
    
    // 2
    private var herosService: HerosServiceProtocol
    private var cancellables = Set<AnyCancellable>()
    
    // 3
    init(users: Users = Users(data: []),
         herosService: HerosServiceProtocol = HeroService()) {
        
        self.users = users
        self.herosService = herosService
    }
    
    // 4
    public func onAppear() {
        self.getUsers(count: 40)
    }
    
    // 5
    private func getUsers(count: Int) {
        herosService.getUsers(count: count)
            .receive(on: DispatchQueue.main)
            .sink { completion in
                switch completion {
                case .failure(let error):
                    print(error)
                case .finished: break
                }
            } receiveValue: { [weak self] users in
                self?.users = users
            }
            .store(in: &cancellables)
    }
}
