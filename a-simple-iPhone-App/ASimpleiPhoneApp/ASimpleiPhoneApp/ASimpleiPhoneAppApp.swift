//
//  ASimpleiPhoneAppApp.swift
//  ASimpleiPhoneApp
//
//  Created by Victor Domingos on 23/12/2020.
// (following a tutorial by Paul Hudson, at https://youtu.be/aP-SQXTtWhY
//

import SwiftUI

@main
struct ASimpleiPhoneAppApp: App {
    // Locations must be an :ObservableObject in order to be used this way
    @StateObject var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView{
                NavigationView{
                    //launches the app UI
                    //create a Locations() instance wchich reads from JSON file
                    ContentView(location: locations.primary)
                }
                .tabItem {
                    Image(systemName: "airplane.circle.fill")
                    Text("Descobrir")
                }
                
                NavigationView{
                    WorldView()
                }
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Locais")
                }
                
                NavigationView{
                    TipsView()
                }
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Dicas")
                }

            }
            .environmentObject(locations)
        }
    }
}
