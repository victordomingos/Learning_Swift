//
//  TipsView.swift
//  ASimpleiPhoneApp
//
//  Created by Victor Domingos on 25/12/2020.
//

import SwiftUI

struct TipsView: View {
    let tips: [Tip]
    
    init() {
        // get the url of our json file and decode it into `places`
        let url = Bundle.main.url(forResource: "tips", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        tips = try! JSONDecoder().decode([Tip].self, from: data)
    }
    
    var body: some View {
        List(tips, id: \.text, children: \.children){ tip in
            if tip.children != nil {
                Label(tip.text, systemImage: "quote.bubble")
                    .font(.headline)
            } else {
                Text(tip.text)
            }
            
        }
        .navigationTitle("Dicas")
    }
}

struct TipsView_Previews: PreviewProvider {
    static var previews: some View {
        TipsView()
    }
}
