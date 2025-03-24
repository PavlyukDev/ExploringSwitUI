//
//  ReadingFromEnvironment.swift
//  ThinkingSwiftUI
//
//  Created by Vitalii Pavliuk on 2024-08-21.
//

import SwiftUI

struct ReadingFromEnvironment: View {
    @Environment(\.dynamicTypeSize)
    private var dynamicTypeSize: DynamicTypeSize
    
    var body: some View {
        Text("Hello, World!")
        if dynamicTypeSize < .xLarge {
            Image(systemName: "figure.wave")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 60)
        }
    }
}

#Preview {
    ReadingFromEnvironment()
}
