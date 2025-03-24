//
//  ContentViewState.swift
//  ThinkingSwiftUI
//
//  Created by Vitalii Pavliuk on 2024-08-07.
//

import Foundation
import SwiftUI

@Observable
final class ModelState {
    var value: Int = 0
}

@Observable
final private class StateObject {
    var value: Int = 0
    init(value: Int) {
        self.value = value
    }
}

struct CounterViewState: View {
    @State private var model: StateObject
    init(value: Int) {
        self.model = StateObject(value: value)
        print("Init")
    }
    
    var body: some View {
        Button("Increment \(model.value)") {
            model.value += 1
        }
    }
}

struct ContentViewState: View {
    
    let counter = CounterViewState(value: 1)
    var body: some View {
        VStack {
            counter
            counter
        }
    }
}

#Preview(body: {
    ContentViewState()
})
