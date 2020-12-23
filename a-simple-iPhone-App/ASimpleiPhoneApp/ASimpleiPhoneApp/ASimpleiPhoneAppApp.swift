//
//  ASimpleiPhoneAppApp.swift
//  ASimpleiPhoneApp
//
//  Created by Victor Domingos on 23/12/2020.
//

import SwiftUI

@main
struct ASimpleiPhoneAppApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ContentView(location: Location.example) //launches the app UI
            }            
        }
    }
}
