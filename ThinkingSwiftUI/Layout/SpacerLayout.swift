//
//  SpacerLayout.swift
//  ThinkingSwiftUI
//
//  Created by Vitalii Pavliuk on 2024-08-13.
//

import SwiftUI

struct SpacerLayout: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                    .background(Color.random)
                // can't set color to divider
                Text("Right aligned text")
            }
            Text("One more right aligned text")
                .frame(maxWidth: .infinity, alignment: .trailing)
        }
        
    }
}

#Preview {
    SpacerLayout()
}
