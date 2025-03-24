//
//  View+StrokeBorder.swift
//  ThinkingSwiftUI
//
//  Created by Vitalii Pavliuk on 2024-08-17.
//

import SwiftUI

extension View {
    func strokeBorder(color: Color = .black) -> some View {
        overlay {
            Rectangle()
                .strokeBorder(color, style: StrokeStyle(lineWidth: 1, dash: [10]))
        }
    }
}

extension View {
    func badgeOverlay<Badge: View>(@ViewBuilder contents: () -> Badge) -> some View {
        self.overlay(alignment: .topTrailing) {
            contents()
                .background {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.teal)
                }
                .alignmentGuide(.top, computeValue: { $0.height })
                .alignmentGuide(.trailing, computeValue: { _ in 0 })
        }
    }
}

extension View {
    func badgeZStack<Badge: View>(@ViewBuilder contents: () -> Badge) -> some View {
        ZStack(alignment: .topTrailing) {
            self
            contents()
                .background {
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color.teal)
                }
                .alignmentGuide(.top, computeValue: { $0.height/2 } )
                .alignmentGuide(.trailing, computeValue: { $0.height/2 } )
                
        }
    }
}

#Preview(body: {
    VStack {
        Text("Some Text")
            .padding()
            .background(.teal)
            .badgeOverlay {
                Text("42")
                    .padding(5)
                    .frame(maxWidth: 40, maxHeight: 40)
                    .background {
                        Circle()
                            .fill(.orange)
                    }
            }
        Text("Some Text")
            .badgeOverlay {
                Text("Long text")
            }
        Text("Some Text")
            .badgeZStack {
                Text("43")
            }
        Text("Some Text")
            .badgeZStack {
                Text("Long text")
            }
    }
})
