//
//  ContentView.swift
//  Moonshot
//
//  Created by Guillermo Ruiz Baires on 3/10/23.
//

import SwiftUI


struct ContentView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let mission: [Mission] = Bundle.main.decode("missions.json")

    var body: some View {
        VStack {
            Text("\(astronauts.count)")
        }
    }
}

#Preview {
    ContentView()
}
