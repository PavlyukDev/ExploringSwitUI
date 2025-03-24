//
//  ZStackLayout.swift
//  ThinkingSwiftUI
//
//  Created by Vitalii Pavliuk on 2024-08-17.
//

import SwiftUI

struct ZStackLayout: View {
    var body: some View {
        FixedView(width: 100, height: 100) {
            ZStack {
                Color.random
                Text("Hello, World!")
            }
        }
        
        HStack(alignment: .bottom) {
            Text("Hello")
                .badgeOverlay {
                    Text("Some long text")
                }
            Text("Hello")
                .badgeZStack {
                    Text("Some long text")
                }
        }
        .strokeBorder()
    }
}

#Preview {
    ZStackLayout()
}
