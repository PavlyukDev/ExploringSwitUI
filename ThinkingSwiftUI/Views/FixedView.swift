//
//  FixedView.swift
//  ThinkingSwiftUI
//
//  Created by Vitalii Pavliuk on 2024-08-17.
//

import SwiftUI

struct FixedView<Content: View>: View {
    let width: CGFloat
    let height: CGFloat
    @ViewBuilder var content: () -> Content
    
    init(width: CGFloat = .infinity,
         height: CGFloat = .infinity,
         content: @escaping () -> Content) {
        self.width = width
        self.height = height
        self.content = content
    }
    
    var body: some View {
        Group {
            content()
        }
        .frame(width: width, height: height)
    }
}

#Preview {
    FixedView {
        Text("Hello")
    }
}
