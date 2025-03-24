//
//  LazyGridLayout.swift
//  ThinkingSwiftUI
//
//  Created by Vitalii Pavliuk on 2024-08-19.
//

import SwiftUI

struct SizeCalculator: ViewModifier {
    
    @Binding var size: CGSize
    
    func body(content: Content) -> some View {
        content
            .background(
                GeometryReader { proxy in
                    Color.clear // we just want the reader to get triggered, so let's use an empty color
                        .onAppear {
                            size = proxy.size
                        }
                }
            )
    }
}

extension View {
    func saveSize(in size: Binding<CGSize>) -> some View {
        modifier(SizeCalculator(size: size))
    }
}

struct Item: View {
    @State private var size: CGSize = .zero
    var body: some View {
        Group {
            Text("\(Int(size.width))x\(Int(size.height))")
                .bold()
                .proposedWidthOrGreater()
                .padding()
        }
        .saveSize(in: $size)
    }
}

struct LazyGridLayout: View {
    var body: some View {
        ViewThatFits {
            Text("Something")
        }.background(Color.random)
        LazyVGrid(columns: [
            GridItem(.flexible(minimum: 60)),
            GridItem(.flexible(minimum: 120))
        ]) {
            Item()
                .background(.teal)
            Item()
                .background(Color.green)
            Item()
                .background(Color.blue)
            Item()
                .background(Color.red)
        }
        .frame(width: 200, height: 200)
        .strokeBorder(color: .purple)
    }
}

#Preview {
    LazyGridLayout()
}
