//
//  Classes.swift
//  Ölprovning
//
//  Created by Petter Gustafsson on 2023-08-18.
//

import SwiftUI
import Foundation
import CoreData

class BeerManager: ObservableObject {
    @Published var beers: [String: [BeerWithImage]] = [:]
    @Published var selectedBeer: Beer? = nil

    func addBeer(_ beer: BeerWithImage, for type: String) {
        if beers[type] == nil {
            beers[type] = []
        }
        beers[type]?.append(beer)
    }
}





