//
//  TextLayout.swift
//  ThinkingSwiftUI
//
//  Created by Vitalii Pavliuk on 2024-08-12.
//

import SwiftUI

struct TextLayout: View {
    var body: some View {
        VStack {
            Text("Hello worls")
                .border(.black)
                .frame(width:  50, height: 100)
                .background(Color.random)
            Text("somethig")
                .border(.black)
                .frame(width:  100, height: 100)
                .background(Color.random)
            Text("somethig")
                .border(.black)
                .frame(width:  200, height: 100)
                .background(Color.random)
            Text("Hello worls")
                .fixedSize()
                .border(.black)
                .frame(width:  50, height: 100)
                .background(Color.random)
        }
    }
}

#Preview {
    TextLayout()
}

