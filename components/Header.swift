//
//  Header.swift
//  Moonshot
//
//  Created by Guillermo Ruiz Baires on 8/10/23.
//

import SwiftUI

struct Header: View {
    let image: String
    let formattedLaunchDate: String
    
    var body: some View {
            VStack {
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                HStack {
                    Text(formattedLaunchDate)
                        .font(.headline)
                        .padding(.horizontal)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white.opacity(0.2))
                        )
                }
                .padding(.top, 10)
            }

       
    }
}

#Preview {
    Header(image: "apollo1", formattedLaunchDate: "2023/08/10")
}
