//
//  FixedSizeLayout.swift
//  ThinkingSwiftUI
//
//  Created by Vitalii Pavliuk on 2024-08-16.
//

import SwiftUI

struct FixedSizeLayout: View {
    var body: some View {
        VStack {
            FixedView(width: 25, height: 50) {
                Text("Hello, World!")
                    .fixedSize()
                    .border(Color.black)
            }
            .strokeBorder()
            FixedView(width: 50, height: 50) {
                Text("Hello, World!")
                    .fixedSize()
                    .border(Color.black)
            }
            .strokeBorder()
            FixedView(width: 100, height: 50) {
                Text("Hello, World!")
                    .fixedSize()
                    .border(Color.black)
            }
            .strokeBorder()
            Text("Hello world")
                .badgeOverlay {
                    Text("42")
                }
            Text("Hi!")
                .badgeOverlay {
                    Text("Too long42")
                }
        }
    }
}

#Preview {
    FixedSizeLayout()
}
