//
//  PadingLayout.swift
//  ThinkingSwiftUI
//
//  Created by Vitalii Pavliuk on 2024-08-14.
//

import SwiftUI

struct PadingLayout: View {
    var body: some View {
        VStack {
            Text("Padding")
                .padding()
                .background(Color.random)
            Text("Padding edge trailing")
                .padding([.trailing])
                .background(Color.random)
            Text("Padding top edge 10")
                .padding([.top], 10)
                .background(Color.random)
        }
    }
}

#Preview {
    PadingLayout()
}
