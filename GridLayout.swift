//
//  GridLayout.swift
//  Moonshot
//
//  Created by Guillermo Ruiz Baires on 10/10/23.
//

import SwiftUI

struct GridLayout: View {
    
    let missions: [Mission]
    let astronauts: [String: Astronaut]
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) { // sets our specified columns grid as columns
                ForEach(missions) { mission in
                    NavigationLink {
                        MissionView(mission: mission, astronauts: astronauts)
                    } label: {
                        VStack {
                            Image(mission.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                                .padding()
                            
                            VStack {
                                Text(mission.displayName) // displays the mission name
                                    .font(.headline)
                                    .foregroundColor(.white)
                                
                                Text(mission.formattedLaunchDate) // displays the mission date
                                    .font(.caption)
                                    .foregroundColor(.white.opacity(0.5))
                            }
                            .padding(.vertical)
                            .frame(maxWidth: .infinity)
                            .background(.lightBackground) // sets the background color as specified in the Color-Theme.swift file
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.lightBackground)
                        )
                    }
                }
            }
            .padding([.horizontal, .bottom])
        }
    }
}

struct GridLayout_Previews: PreviewProvider {
    static var previews: some View {
        GridLayout(missions: Bundle.main.decode("missions.json"), astronauts: Bundle.main.decode("astronauts.json"))
            .preferredColorScheme(.dark)
    }
}
