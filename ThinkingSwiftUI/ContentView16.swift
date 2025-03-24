//
//  ContentView16.swift
//  ThinkingSwiftUI
//
//  Created by Vitalii Pavliuk on 2024-03-02.
//

import SwiftUI

final fileprivate class CounterModel: ObservableObject {
    @Published
    var count: Int = 0
}

final fileprivate class Model {
    private var rooms: [String: CounterModel] = [:]
    
    func counterModel(forRoom name: String) -> CounterModel {
        if let room = rooms[name] { return room }
        let model = CounterModel()
        rooms[name] = model
        return model
    }
}

fileprivate struct CounterView: View {
    @ObservedObject
    var model: CounterModel
    
    var body: some View {
        Button("Increment \(model.count)") {
            model.count += 1
        }
    }
}

struct ContentView16: View {
    private let rooms = ["Hallway", "Bedroom", "Kitchen"]
    private let model = Model()
    @State private var roomName: String = "Hallway"
    
    var body: some View {
        VStack {
            Picker("Rooms", selection: $roomName) {
                ForEach(rooms, id: \.self) { value in
                    Text(value)
                }
            }.pickerStyle(.wheel)
            CounterView(model: model.counterModel(forRoom: roomName))
        }
    }
}


#Preview {
    ContentView16()
}
