//
//  ContentView.swift
//  OnlineCinema
//
//  Created by Лев Бондаренко on 07.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
