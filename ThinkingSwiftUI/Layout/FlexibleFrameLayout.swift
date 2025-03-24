//
//  FlexibleFrameLayout.swift
//  ThinkingSwiftUI
//
//  Created by Vitalii Pavliuk on 2024-08-14.
//

import SwiftUI

extension View {
    func proposedWidthOrGreater() -> some View {
        frame(maxWidth: .infinity)
    }
}

extension View {
    func acceptProposedWidth() -> some View {
        frame(minWidth: 0, maxWidth: .infinity)
    }
}

struct FlexibleFrameLayout: View {
    var body: some View {
        Text("Hello world")
            .frame(minWidth: 0, maxWidth: .infinity)
            .background(.teal)
            .padding(10)
            .strokeBorder()
        VStack {
            Text("proposedWidthOrGreater")
                .bold()
            Group {
                Text("Hello, World! World!")
                    .proposedWidthOrGreater()
                    .background(.teal)
            }.frame(width: 50, height: 50)
                .strokeBorder()
            Group {
                Text("Hellllo, World!")
                    .proposedWidthOrGreater()
                    .background(Color.random)
            }.frame(width: 100, height: 50)
                .strokeBorder()
            Group {
                Text("Hellllo, World!")
                    .proposedWidthOrGreater()
                    .background(Color.random)
            }.frame(height: 50)
                .strokeBorder()
            Group {
                Text("Hello, World! World!")
                    .acceptProposedWidth()
                    .background(Color.random)
            }.frame(width: 50, height: 50)
                .strokeBorder()
            Group {
                Text("Hellllo, World!")
                    .acceptProposedWidth()
                    .background(Color.random)
            }.frame(width: 100, height: 50)
                .strokeBorder()
            Group {
                Text("acceptProposedWidth 50")
                    .acceptProposedWidth()
                    .background(Color.random)
            }.frame(height: 50)
                .strokeBorder()
        }
        
    }
}

#Preview {
    FlexibleFrameLayout()
}
