//
//  location.swift
//  ASimpleiPhoneApp
//
//  Created by Victor Domingos on 23/12/2020.
//

import Foundation

// this reproduces the data structure in the JSON file
struct Location: Decodable, Identifiable {
    let id: Int
    let name: String
    let country: String
    let description: String
    let more: String
    let latitude: Double
    let longitude: Double
    let heroPicture: String
    let advisory: String
    
    static let example = Location(id: 1, name: "Serra da Estrela", country: "Portugal", description: "A serra mais alta de Portugal Continental", more: "Mais texto aqui", latitude: 42.1, longitude: -27.1, heroPicture: "smokies", advisory: "Cuidado para não cair!")
}
