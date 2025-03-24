//
//  DividerLayout.swift
//  ThinkingSwiftUI
//
//  Created by Vitalii Pavliuk on 2024-08-13.
//

import SwiftUI

struct DividerLayout: View {
    var body: some View {
        Divider()
            .frame(height: 50)
            .border(.black, width: 1)
            .background(Color.random)
            // This divider touches the safe area and colors the notch
        Divider()
            .frame(width: 100, height: 100)
            .background(Color.random)
        HStack {
            Text("Left")
            Divider()
                .frame(width: 100)
                .background(Color.random)
                
            Text("Right")
        }
        VStack {
            Text("Top")
            Divider()
                .background(Color.red)
            Text("Bottom")
        }
        
    }
}

#Preview {
    DividerLayout()
}
