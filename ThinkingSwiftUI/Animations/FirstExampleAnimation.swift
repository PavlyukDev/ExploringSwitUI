//
//  FirstExampleAnimation.swift
//  ThinkingSwiftUI
//
//  Created by Vitalii Pavliuk on 2024-08-23.
//

import SwiftUI

struct FirstExampleAnimation: View {
    @State
    private var flagAnimation = false
    @State
    private var flagNoAnimation = false
    var body: some View {
        Rectangle()
            .fill(flagAnimation ? .teal : .red)
            .frame(width: flagAnimation ? 100 : 50,
                   height: flagAnimation ? 50 : 100)
            .onTapGesture {
                withAnimation(.bouncy) {
                    flagAnimation.toggle()
                }
            }
        let rectangle = Rectangle()
            .fill(.orange)
            .onTapGesture {
                withAnimation{ flagNoAnimation.toggle() }
            }
        if flagNoAnimation {
            rectangle
                .frame(width: 200, height: 100)
        } else {
            rectangle
                .frame(width: 100, height: 200)
        }
    }
}

#Preview {
    FirstExampleAnimation()
}
