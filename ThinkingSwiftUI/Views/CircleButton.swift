//
//  CircleButton.swift
//  ThinkingSwiftUI
//
//  Created by Vitalii Pavliuk on 2024-08-20.
//

import SwiftUI

struct CircleButton: View {
    let symbol: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            Image(systemName: symbol)
                .resizable()
                .foregroundStyle(.black)
                .aspectRatio(contentMode: .fit)
                .padding()
                
        })
        .frame(minWidth: 0, maxWidth: 100,
               minHeight: 0, maxHeight: 100)
        .background(Circle().fill(Color.teal))
//        .strokeBorder(color: .red)
    }
}

#Preview {
    VStack {
        CircleButton(symbol: "line.3.horizontal", action: {})
            .frame(width: 160, height: 160)
            .strokeBorder()
        CircleButton(symbol: "tray.and.arrow.up", action: {})
            .strokeBorder()
    }
}
