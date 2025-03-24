//
//  HStack.swift
//  ThinkingSwiftUI
//
//  Created by Vitalii Pavliuk on 2024-08-17.
//

import SwiftUI

struct HStackLayout: View {
    var body: some View {
        FixedView(width: 150, height: 50) {
            LazyHStack(spacing: 0) {
                Color.teal
                Text("Hello worls")
                Color.cyan
            }
        }
        FixedView(width: 150, height: 50) {
            HStack(spacing: 0) {
                Color.teal
                Text("Hello worls")
                Color.cyan
            }
        }
        FixedView(width: 300, height: 50) {
            HStack(spacing: 0) {
                Color.teal
                Text("Hello worls")
                Color.cyan
            }
        }
        FixedView(width: 150, height: 50) {
            HStack(spacing: 0) {
                Color.teal
                Text("Hello worls")
                    .layoutPriority(1)
                Color.cyan
            }
        }
        FixedView(width: 300, height: 50) {
            HStack(spacing: 0) {
                Color.teal
                    .layoutPriority(1)
                Text("Hello worls")
                Color.cyan.layoutPriority(1)
            }
        }
    }
}

#Preview {
    HStackLayout()
}
