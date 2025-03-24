//
//  CustomAlignmentLayout.swift
//  ThinkingSwiftUI
//
//  Created by Vitalii Pavliuk on 2024-08-20.
//

import SwiftUI

struct MenuAlignment: AlignmentID {
    static func defaultValue(in context: ViewDimensions) -> CGFloat {
        context.width/2 }
}

extension HorizontalAlignment {
    static let menu = HorizontalAlignment(MenuAlignment.self)
}

struct CustomAlignmentLayout: View {
    var body: some View {
        VStack(alignment: .menu) {
            HStack {
                Text("Inbox")
                CircleButton(symbol: "tray.and.arrow.down", action: {})
                    .frame(width: 50, height: 50)
                    .alignmentGuide(.menu) { $0.width/2 }
            }
            HStack {
                Text("Sent")
                CircleButton(symbol: "tray.and.arrow.up", action: {})
                    .frame(width: 50, height: 50)
                    .alignmentGuide(.menu) { $0.width/2 }
            }
            CircleButton(symbol: "line.3.horizontal", action: {})
                .frame(width: 60, height: 60)
        }
    }
}

#Preview {
    CustomAlignmentLayout()
}
