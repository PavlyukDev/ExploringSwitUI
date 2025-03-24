//
//  ImageLayout.swift
//  ThinkingSwiftUI
//
//  Created by Vitalii Pavliuk on 2024-08-13.
//

import SwiftUI

struct ImageLayout: View {
    var body: some View {
        VStack {
            Image(uiImage: .checkmark)
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
            .frame(width: 100, height: 100)
            Image(uiImage: .checkmark)
                .resizable(resizingMode: .tile) // use .tile for many copies
                .aspectRatio(contentMode: .fit)
            .frame(width: 100, height: 100)
            Image(systemName: "line.3.horizontal")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
        }
    }
}

#Preview {
    ImageLayout()
}
