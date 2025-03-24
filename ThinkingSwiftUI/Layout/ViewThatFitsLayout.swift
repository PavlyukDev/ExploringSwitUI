//
//  ViewThatFitsLayout.swift
//  ThinkingSwiftUI
//
//  Created by Vitalii Pavliuk on 2024-08-19.
//

import SwiftUI

struct ViewThatFitsLayout: View {
    var viewThatFits: some View = {
        ViewThatFits {
            Text("smth")
                .background(.purple)
            Text("Long text something")
                .background(.teal)
            Text("Something")
                .background(.green)
        }
    }()
    var body: some View {
        FixedView(width: 50) {
            viewThatFits
        }
        .strokeBorder()
        FixedView(width: 100) {
            viewThatFits
        }
        .strokeBorder()
        FixedView(width: 180) {
            viewThatFits
        }
        .strokeBorder()
        FixedView(width: 20) {
            viewThatFits
        }
        .strokeBorder()
    }
}

#Preview {
    ViewThatFitsLayout()
}
