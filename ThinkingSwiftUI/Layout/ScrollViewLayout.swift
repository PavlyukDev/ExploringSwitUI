//
//  ScrollViewLayout.swift
//  ThinkingSwiftUI
//
//  Created by Vitalii Pavliuk on 2024-08-18.
//

import SwiftUI

struct ScrollViewLayout: View {
    var body: some View {
        ScrollView {
            Image(systemName: "wind.snow")
            Color.random
                .aspectRatio(contentMode: .fill)
            Image(systemName: "wind.snow")
                .resizable()
            Color.random
            Image(systemName: "wind.snow")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Color.teal
                .aspectRatio(1, contentMode: .fit)
            Text("Hello, World!")
        }
    }
}

#Preview {
    ScrollViewLayout()
}
