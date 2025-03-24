//
//  ShapeLayout.swift
//  ThinkingSwiftUI
//
//  Created by Vitalii Pavliuk on 2024-08-12.
//

import SwiftUI

extension CGRect {
    subscript(_ point: UnitPoint) -> CGPoint {
        CGPoint(x: minX + width*point.x, y: minY + height*point.y)
    }
}

struct Star: Shape {
    func path(in rect: CGRect) -> Path {
        Path { p in
            p.move(to: rect[.top])
            p.addLines([
                rect[.top],
                rect[.init(x: 0.4, y: 0.4)],
                rect[.leading],
                rect[.init(x: 0.4, y: 0.6)],
                rect[.bottom],
                rect[.init(x: 0.6, y: 0.6)],
                rect[.trailing],
                rect[.init(x: 0.6, y: 0.4)]
            ])
            p.closeSubpath()
        }
    }
    
    func sizeThatFits(_ proposal: ProposedViewSize) -> CGSize {
        var result = proposal.replacingUnspecifiedDimensions()
        result.width = min(result.width, result.height)
        result.height = result.width
        return result
    }
}

struct ShapeLayout: View {
    var body: some View {
        VStack {
            Star()
                .stroke(style: .init(lineWidth: 4))
                .frame(width: 200)
                .background(Color.random)
            Star()
                .stroke(style: .init(lineWidth: 4))
                .frame(width: 100, height: 200)
                .background(Color.random)
            
            Star()
                .fixedSize()
                .background(Color.random)
        }
        
    }
}

#Preview {
    ShapeLayout()
}
