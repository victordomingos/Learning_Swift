//
//  Locations.swift
//  ASimpleiPhoneApp
//
//  Created by Victor Domingos on 23/12/2020.
//

import Foundation

class Locations: ObservableObject {
    let places: [Location] //`let` creates a constant in swift
    
    // a calculated property, which returns the first place in the list
    var primary: Location {
        places[0]
    }
    
    init() {
        // get the url of our json file and decode it into `places`
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        places = try! JSONDecoder().decode([Location].self, from: data)
    }
}
