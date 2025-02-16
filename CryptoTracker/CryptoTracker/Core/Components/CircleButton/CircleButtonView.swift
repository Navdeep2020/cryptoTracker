//
//  CircleButtonView.swift
//  CryptoTracker
//
//  Created by Navdeep Singh on 16/06/24.
//

import SwiftUI

struct CircleButtonView: View {
    
    let iconName: String
    var body: some View {
        Image(systemName: iconName)
            .font(.headline)
            .foregroundColor(Color.theme.accent)
            .frame(width: 50, height: 50)
            .background(
                Circle()
                    .foregroundColor(Color.theme.background)
            )
            .shadow(color: Color.theme.accent.opacity(0.25), radius: 10)
            .padding()
    }
}

#Preview {
    CircleButtonView(iconName: "plus")
        .previewLayout(.sizeThatFits)
        .padding()
}
