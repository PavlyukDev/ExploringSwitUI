//
//  AlignmentLayout.swift
//  ThinkingSwiftUI
//
//  Created by Vitalii Pavliuk on 2024-08-20.
//

import SwiftUI

struct AlignmentLayout: View {
    let pencil = Image(systemName: "pencil.circle.fill")
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom)) {
            Rectangle()
                .fill(.teal)
                .frame(width: 50, height: 50)
            Text("Hello, World!")
        }
        HStack(alignment: .center) {
            Text("Hello")
            Image(systemName: "pencil.circle.fill")
                .alignmentGuide(VerticalAlignment.center, computeValue: { dimension in
                    dimension[VerticalAlignment.center]/2
                })
        }
        HStack(alignment: .firstTextBaseline) {
            Text("Hello")
            Image(systemName: "pencil.circle.fill")
                .alignmentGuide(.firstTextBaseline, computeValue: { dimension in
                    dimension.width/2
                })
        }
    }
}

#Preview {
    AlignmentLayout()
}
