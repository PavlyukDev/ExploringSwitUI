//
//  Color+Extensions.swift
//  ThinkingSwiftUI
//
//  Created by Vitalii Pavliuk on 2024-08-12.
//

import Foundation
import SwiftUI

extension Color {
    static var random: Color {
        Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1),
            opacity: 1
        )
    }
}
