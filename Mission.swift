//
//  Mission.swift
//  Moonshot
//
//  Created by Guillermo Ruiz Baires on 6/10/23.
//

import Foundation

struct CrewRole: Codable {
    let name: String
    let role: String
}

struct Mission: Codable, Identifiable {
    let id: Int
    let launchDate: String?
    let crew: [CrewRole]
    let description: String
}
