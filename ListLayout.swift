//
//  ListLayout.swift
//  Moonshot
//
//  Created by Guillermo Ruiz Baires on 10/10/23.
//

import SwiftUI

struct ListLayout: View {
    
    let missions: [Mission]
    let astronauts: [String: Astronaut]
    
    var body: some View {
        List(missions) { mission in
            NavigationLink {
                MissionView(mission: mission, astronauts: astronauts)
            } label: {
                HStack {
                    Image(mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                        .padding()
                    
                    VStack(alignment: .leading) {
                        Text(mission.displayName)
                            .font(.headline)
                        
                        Text(mission.formattedLaunchDate)
                    }
                }
            }
            .listRowBackground(Color.darkBackground)
        }
        .listStyle(.plain)
    }
}

struct ListLayout_Previews: PreviewProvider {
    static var previews: some View {
        ListLayout(missions: Bundle.main.decode("missions.json"), astronauts: Bundle.main.decode("astronauts.json"))
            .preferredColorScheme(.dark)
    }
}
