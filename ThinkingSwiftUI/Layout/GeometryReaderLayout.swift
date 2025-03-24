//
//  GeometryReaderLayout.swift
//  ThinkingSwiftUI
//
//  Created by Vitalii Pavliuk on 2024-08-18.
//

import SwiftUI

struct GeometryReaderLayout: View {
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            GeometryReader { proxy in
                Text(verbatim: "\(proxy.size)")
                    .background(.teal)
                    .strokeBorder()
            }
            .background(Color.random)
        }
    }
}

#Preview {
    GeometryReaderLayout()
}
