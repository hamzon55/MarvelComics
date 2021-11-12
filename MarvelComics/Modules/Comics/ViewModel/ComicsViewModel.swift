//
//  ComicsViewModel.swift
//  MarvelComics
//
//  Created by Hamza on 12/10/21.
//

import Foundation
import Combine

class ComicsViewModel: ObservableObject {
    // 1
    @Published public var comics: APIComicResult = APIComicResult(data: APIComicData(results: []))
    // 2
    private var herosService: HerosServiceProtocol
    private var cancellables = Set<AnyCancellable>()

    init( herosService: HerosServiceProtocol = HeroService(),
         comics: APIComicResult = APIComicResult(data: APIComicData(results: []))) {
        
            self.herosService  = herosService
            self.comics  = comics
    }
    
    // 4
    public func onAppear() {
        self.getComics()
    }
    
    // 5
    private func getComics() {
        
        herosService.getComics()
            .receive(on: DispatchQueue.main)
            .sink { completion in
                switch completion {
                case .failure(let error):
                    print(error)
                    
                case .finished: break
                }
            } receiveValue: { [weak self] comics in
                
                self?.comics = comics
            }
            .store(in: &cancellables)
    }
}
