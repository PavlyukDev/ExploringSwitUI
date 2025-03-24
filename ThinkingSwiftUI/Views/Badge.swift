//
//  Badge.swift
//  ThinkingSwiftUI
//
//  Created by Vitalii Pavliuk on 2024-08-21.
//

import SwiftUI

protocol BadgeStyle {
    associatedtype Body: View
    @ViewBuilder func makeBody(_ label: AnyView) -> Body
}

extension BadgeStyle where Self == FancyBadgeStyle {
    static var fancy: FancyBadgeStyle {
        FancyBadgeStyle()
    }
}

struct DefaultBadgeStyle: BadgeStyle {
    var color: Color = .green
    
    func makeBody(_ label: AnyView) -> some View {
        label
            .font(.caption2)
            .foregroundColor(.white)
            .padding(.horizontal, 10)
            .padding(.vertical, 2)
            .background {
                Capsule(style: .continuous)
                    .fill(color)
            }
    }
}

struct FancyBadgeStyle: BadgeStyle {
    var background: some View {
        ZStack {
            ContainerRelativeShape()
                .fill(Color.red)
                .overlay {
                    ContainerRelativeShape()
                        .fill(LinearGradient(
                            colors: [.white, .clear],
                            startPoint: .top,
                            endPoint: .center)
                        )
                }
            ContainerRelativeShape()
                .strokeBorder(.white, lineWidth: 2)
                .shadow(radius: 3)
        }
    }
    
    func makeBody(_ label: AnyView) -> some View {
        label
            .font(.caption)
            .foregroundColor(.white)
            .padding(.horizontal, 7)
            .padding(.vertical, 4)
            .background(background)
            .containerShape(Capsule(style: .continuous))
    }
    
    
}

enum BadgeStyleKey: EnvironmentKey {
    static var defaultValue: any BadgeStyle = DefaultBadgeStyle()
}

enum BadgeColorKey: EnvironmentKey {
    static var defaultValue: Color = .teal
}

extension EnvironmentValues {
    var badgeColor: Color {
        get { self [BadgeColorKey.self] }
        set { self [BadgeColorKey.self] = newValue }
    }
    
    var badgeStyle: any BadgeStyle {
        get { self [BadgeStyleKey.self] }
        set { self [BadgeStyleKey.self] = newValue }
    }
}

struct OverlayBadge<BadgeLabel: View>: ViewModifier {
    var alignment: Alignment = .topTrailing
    var label: BadgeLabel
    @Environment(\.badgeStyle)
    private var badgeStyle
    
    func body(content: Content) -> some View {
        content
            .overlay(alignment: alignment) {
                AnyView(badgeStyle.makeBody(AnyView(label)))
                    .fixedSize()
                    .alignmentGuide(alignment.horizontal) { $0[HorizontalAlignment.center] }
                    .alignmentGuide(alignment.vertical) { $0[VerticalAlignment.center] }
            }
    }
}

extension View {
    func badgeColor(_ color: Color) -> some View {
        environment(\.badgeColor, color)
    }
    
    func badgeStyle(_ style: any BadgeStyle) -> some View {
        environment(\.badgeStyle, style)
    }
    
    func badge<V: View>(alignment: Alignment = .topTrailing,
                        @ViewBuilder _ content: () -> V) -> some View {
        modifier(OverlayBadge(alignment: alignment, label: content()))
    }
}

struct Badge: ViewModifier {
    @Environment(\.badgeColor)
    private var badgeColor: Color
    
    func body(content: Content) -> some View {
        content
            .font(.title2)
            .foregroundColor(.white)
            .padding(.horizontal, 10)
            .padding(.vertical, 2)
            .background {
                Capsule(style: .continuous)
                    .fill(badgeColor)
            }
    }
}

#Preview {
    VStack {
        Text(3000, format: .number)
            .badge {
                Text("LOL")
            }
            .badgeStyle(.fancy)
        Text("Hello")
            .modifier(Badge())
        Text("Something")
            .badge {
                Text(1, format: .number)
            }
    }
    .badgeColor(.orange)
}
