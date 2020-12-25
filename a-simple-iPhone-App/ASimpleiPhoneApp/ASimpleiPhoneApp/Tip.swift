//
//  Tip.swift
//  ASimpleiPhoneApp
//
//  Created by Victor Domingos on 25/12/2020.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?  // ? denotes optional (it may be empty)
}
