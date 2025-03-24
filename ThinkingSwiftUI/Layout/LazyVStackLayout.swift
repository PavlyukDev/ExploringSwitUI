//
//  LazyVStackLayout.swift
//  ThinkingSwiftUI
//
//  Created by Vitalii Pavliuk on 2024-08-18.
//

import SwiftUI

struct LazyVStackLayout: View {
    var body: some View {
        ScrollView(.vertical, content: {
            LazyVStack {
                ForEach(0..<100) { i in
                    Text("Row number \(i)")
                        .padding()
                        .onAppear {
                            print("View \(i) APPEARED")
                        }
                        .onDisappear {
                            print("View \(i) DISAPPEARED")
                        }
                    
                }
            }
        })
    }
}

#Preview {
    LazyVStackLayout()
}
