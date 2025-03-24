//
//  LazyHStackLayout.swift
//  ThinkingSwiftUI
//
//  Created by Vitalii Pavliuk on 2024-08-18.
//

import SwiftUI

struct LazyHStackLayout: View {
    var body: some View {
        FixedView(width: 150, height: 50) {
            LazyHStack(spacing: 0) {
                Color.teal
                Text("Hello World!")
                Color.cyan
            }
        }
        .strokeBorder()
        FixedView(width: 150, height: 50) {
            HStack(spacing: 0) {
                Color.teal
                Text("Hello World!")
                Color.cyan
            }
        }
        .strokeBorder()
        FixedView(width: 150, height: 50) {
            LazyHStack(spacing: 0) {
                Color.teal
                Text("LazyHStack container")
                Color.cyan
            }
        }
        .strokeBorder()
        FixedView(width: 150, height: 50) {
            HStack(spacing: 0) {
                Color.teal
                Text("HStack container")
                Color.cyan
            }
        }
        .strokeBorder()
    }
}

#Preview {
    LazyHStackLayout()
}
