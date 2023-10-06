//
//  ContentView.swift
//  Moonshot
//
//  Created by Guillermo Ruiz Baires on 3/10/23.
//

import SwiftUI


struct ContentView: View {
    let astronauts = Bundle.main.decode("astronauts.json")

    var body: some View {
        VStack {
            Text("\(astronauts.count)")
        }
    }
}

#Preview {
    ContentView()
}
