//
//  FirstExample.swift
//  ThinkingSwiftUI
//
//  Created by Vitalii Pavliuk on 2024-08-21.
//

import SwiftUI

struct FirstExample: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
            Text("Hello, World 2!")
        }
        .environment(\.font, .largeTitle)
        Text("Hello, World 3!")
        Text("More environment examples \n in Badge code")
            .foregroundStyle(.red)
            .bold()
            .badge{
                Text(10, format: .number)
            }
    }
}

#Preview {
    FirstExample()
}
