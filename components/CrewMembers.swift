//
//  CrewMembers.swift
//  Moonshot
//
//  Created by Guillermo Ruiz Baires on 8/10/23.
//

import SwiftUI

struct CrewMembers: View {
    let id: String
    let name: String
    let role: String
    
    var body: some View {
        HStack {
            Image(id)
                .resizable()
                .frame(width: 104, height: 72)
                .clipShape(Capsule())
                .overlay(
                    Capsule()
                        .strokeBorder(.white, lineWidth: 1)
                )
            
            VStack(alignment: .leading) {
                Text(name)
                    .foregroundStyle(.white)
                    .font(.headline)
                Text(role)
                    .foregroundStyle(.secondary)
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    CrewMembers(id: "aldrin", name: "Edwin E. Aldrin Jr.", role: "pilote")
}
