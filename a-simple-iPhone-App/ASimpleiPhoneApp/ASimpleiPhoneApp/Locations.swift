//
//  Locations.swift
//  ASimpleiPhoneApp
//
//  Created by Victor Domingos on 23/12/2020.
//

import Foundation

class Locations: ObservableObject {
    let places: [Location]
    
    init() {
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        
        
    }
}
