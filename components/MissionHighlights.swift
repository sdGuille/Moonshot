//
//  MissionHighlights.swift
//  Moonshot
//
//  Created by Guillermo Ruiz Baires on 8/10/23.
//

import SwiftUI

struct MissionHighlights: View {
    let description: String
    
    var body: some View {
        VStack(alignment: .leading) {
            CustomDivider()
            
            Text("Mission Highlights")
                .font(.title.bold())
                .padding(.bottom, 5)
            
            Text(description)
            
            CustomDivider()
            
            Text("Crew")
                .font(.title.bold())
                .padding(.bottom, 5)
        }
        .padding(.horizontal)
    }
}

#Preview {
    MissionHighlights(description:
                        "Apollo 1, initially designated AS-204, was the first crewed mission of the United States Apollo program, the project to land the first men on the Moon.\n\nPlanned as the first low Earth orbital test of the Apollo command and service module, to launch on February 21, 1967, the mission never flew; a cabin fire during a launch rehearsal test at Cape Kennedy Air Force Station Launch Complex 34 on January 27 killed all three crew members—Command Pilot Virgil I. \"Gus\" Grissom, Senior Pilot Ed White, and Pilot Roger B. Chaffee—and destroyed the command module (CM).\n\nThe name Apollo 1, chosen by the crew, was made official by NASA in their honor after the fire."
    )
}
