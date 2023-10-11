//
//  CustomDivider.swift
//  Moonshot
//
//  Created by Guillermo Ruiz Baires on 8/10/23.
//

import SwiftUI

struct CustomDivider: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundColor(.lightBackground)
            .padding(.vertical)
    }
}

#Preview {
    CustomDivider()
}
