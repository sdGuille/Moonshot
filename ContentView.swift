//
//  ContentView.swift
//  Moonshot
//
//  Created by Guillermo Ruiz Baires on 3/10/23.
//

import SwiftUI


struct ContentView: View {
    
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json") // decodes the astronauts.json file and puts it in an array Strings containing Astronauts
    let missions: [Mission] = Bundle.main.decode("missions.json") // decodes the missions.json file and puts it in an array of Missions
    
    @AppStorage("showingGrid") private var showingGrid = true // Saves the users preference and remembers which type of grid to load
    
    var body: some View {
        NavigationStack {
            Group { // use a group to wrap your conditions in a view, otherwise they won't work, which you can then add modifiers to.
                if showingGrid {
                    GridLayout(missions: missions, astronauts: astronauts) // if true, show the GridLayout view
                } else {
                    ListLayout(missions: missions, astronauts: astronauts) // if false, show the ListLayout view
                }
            }
            .toolbar {
                Button {
                    showingGrid.toggle() // Toggles showingGrid to false or true
                } label: {
                    if showingGrid {
                        Label("Show as table", systemImage: "list.dash")
                    } else {
                        Label("Show as grid", systemImage: "square.grid.2x2")
                    }
                }
            }
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
        }
    }
}

#Preview {
    ContentView()
}
