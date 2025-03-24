//
//  ContentView.swift
//  ThinkingSwiftUI
//
//  Created by Vitalii Pavliuk on 2024-02-29.
//

import SwiftUI



final class ModeliOS16: ObservableObject {
    var value: Int = 0 {
        willSet {
            objectWillChange.send()
        }
    }
    static let shared = ModeliOS16()
}

struct CounerViewiOS16: View {
    private var _model: ObservedObject<ModeliOS16>
    var model: ModeliOS16 {
        _model.wrappedValue
    }
    
    init(model: ModeliOS16) {
        _model = ObservedObject(initialValue: model)
    }
    
    var body: some View {
        Button("\(model.value)") {
            print("Smth")
            model.value += 1
        }
    }
}


@Observable
final class ModeliOS17 {
    var value: Int = 0
    
    static let shared: ModeliOS17 = ModeliOS17()
}

struct CounerViewiOS17: View {
//    @State
    var model: ModeliOS17
    
    var body: some View {
        Button("\(model.value)") {
            print("Smth")
            model.value += 1
        }
    }
}

struct ContentView: View {
    var body: some View {
        CounerViewiOS17(model: ModeliOS17.shared)
        CounerViewiOS16(model: ModeliOS16.shared)
    }
}

#Preview {
    ContentView()
}
