//
//  ComicsDetailViewModel.swift
//  MarvelComics
//
//  Created by Hamza on 10/11/21.
//


import UIKit
import Combine

class ComicsDetailViewModel: ObservableObject {
    
    // 2
    public let comic: Comic
    
    // 3
    private var cancellables = Set<AnyCancellable>()
    
    init(comic: Comic) {
        
        self.comic = comic
    }
}
