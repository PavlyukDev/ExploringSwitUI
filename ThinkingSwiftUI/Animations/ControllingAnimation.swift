//
//  ControllingAnimation.swift
//  ThinkingSwiftUI
//
//  Created by Vitalii Pavliuk on 2024-08-26.
//

import SwiftUI

struct ToggleRectangle: View {
    @Binding
    var flag: Bool
    var body: some View {
        Rectangle()
            .fill(.indigo)
            .frame(width: flag ? 50 : 100, height: 100)
            .onTapGesture { flag.toggle() }
    }
}

struct ControllingAnimation: View {
    @State
    private var animationFlag: Bool = true
    @State
    private var toggle: Bool = false
    
    @State
    private var animationDegree: Angle = .zero
    
    private let rotateAnimation: Animation  = 
        .linear
        .repeatForever(autoreverses: false)
        .speed(0.1)
    var body: some View {
        VStack(spacing: 20) {
            Rectangle()
                .fill(.link)
                .frame(width: 50, height: 50)
                .rotationEffect(animationDegree)
                .onAppear {
                    withAnimation(rotateAnimation) {
                        animationDegree = .degrees(360)
                    }
                }
                .animation(rotateAnimation) {
                    $0.rotationEffect(animationFlag ? .zero : .degrees(360))
                }
            // 👇 -> 👍
            Rectangle()
                .fill(animationFlag ? .orange : .teal)
                .frame(width: animationFlag ? 100 : 50, height: animationFlag ? 50 : 100)
                .animation(.bouncy, value: animationFlag)
                .onTapGesture {
                    animationFlag.toggle()
                }
            // 👇 -> 🤷‍♂️
            Text("Hello World!")
                .opacity(animationFlag ? 1 : 0)
                .animation(.default) { contextView in
                    contextView.rotationEffect(animationFlag ? .zero : .degrees(90) )
                }
            // 👇 -> 🙈
            Text("Hello World 2!")
                .opacity(animationFlag ? 1 : 0)
                .animation(nil)
                .rotationEffect(animationFlag ? .zero : .degrees(90))
                .animation(.default)
            // 👇 -> 👍
            ToggleRectangle(flag: $toggle.animation(.bouncy))
        }
    }
}

#Preview {
    ControllingAnimation()
}
