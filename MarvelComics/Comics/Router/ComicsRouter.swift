//
//  ComicsRouter.swift
//  MarvelComics
//
//  Created by Hamza on 10/11/21.
//

 import SwiftUI



final class ComicsRouter {
    
    public static func destinationForTappedComic(comic: Comic) -> some View {
        return ComicsDetailConfigurator.configureComicDetailView(with: comic)
    }
}
