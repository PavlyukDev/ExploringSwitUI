//
//  BindingView.swift
//  ThinkingSwiftUI
//
//  Created by Vitalii Pavliuk on 2024-03-04.
//

import SwiftUI

struct CounterViewBinding: View {
    @Binding
    var value: Int

    var body: some View {
        let _ = Self._printChanges()
        Button("Increment \(value)") {
            value += 1
        }
    }
}

struct BindingContentView: View {
    @State
    private var value: Int = 0
    
    var body: some View {
        let _ = Self._printChanges()
        CounterViewBinding(value: $value)
    }
}

#Preview(body: {
    BindingContentView()
})
