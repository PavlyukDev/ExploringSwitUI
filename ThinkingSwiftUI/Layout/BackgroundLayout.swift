//
//  BackgroundLayout.swift
//  ThinkingSwiftUI
//
//  Created by Vitalii Pavliuk on 2024-08-16.
//

import SwiftUI

extension View {
    func highlight(enabled: Bool = true) -> some View {
        background {
            if enabled {
                Color.orange
                    .padding(-3)
            }
        }
    }
}

struct BackgroundLayout: View {
    @State private var isOverlayEnabled: Bool = true
    var body: some View {
        VStack {
            Group {
                Color.teal
                    .highlight(enabled: isOverlayEnabled)
            }
            .frame(width: 100, height: 100)
            Toggle("Enable overlay", isOn: $isOverlayEnabled)
                    .fixedSize()
                    .padding()
        }
    }
}

#Preview {
    BackgroundLayout()
}
