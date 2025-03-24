//
//  ContentView17.swift
//  ThinkingSwiftUI
//
//  Created by Vitalii Pavliuk on 2024-03-04.
//

import SwiftUI

@Observable
final fileprivate class CounterModel {
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
    var viewModel: CounterModel
    var body: some View {
        let _ = Self._printChanges()
        Button("Increment \(viewModel.count)") {
            let _ = Self._printChanges()
            viewModel.count += 1
        }
    }
}

struct ContentView17: View {
    private let rooms = ["Hallway", "Bedroom", "Kitchen"]
    private let model = Model()
    @State
    private var roomName = "Hallway"
    var body: some View {
        VStack {
            let _ = Self._printChanges()
            Picker("Rooms", selection: $roomName) {
                ForEach(rooms, id: \.self) { name in
                    Text(name)
                }
            }.pickerStyle(.segmented)
            CounterView(viewModel: model.counterModel(forRoom: roomName))
        }
    }
}

#Preview {
    ContentView17()
}
