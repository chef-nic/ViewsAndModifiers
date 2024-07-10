//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Nicholas Johnson on 7/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("First")
                .titleStyle()

            Text("Second")
                .titleStyle()
        }
    }
}

struct BlueTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .foregroundStyle(.blue)
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(BlueTitle())
    }
}

#Preview {
    ContentView()
}
