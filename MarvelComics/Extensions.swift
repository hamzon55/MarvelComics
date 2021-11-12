//
//  Extensions.swift
//  MarvelComics
//
//  Created by Hamza on 11/11/21.
//

import Foundation

extension String{
    var htmlStripped : String{
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
