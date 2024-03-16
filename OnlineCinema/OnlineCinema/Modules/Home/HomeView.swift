//
//  HomeView.swift
//  OnlineCinema
//
//  Created by Лев Бондаренко on 11.03.2024.
//

import SwiftUI

struct HomeView: View {

    @StateObject var container: MVIContainer<HomeIntentProtocol, HomeModelStatePotocol>
    
    private var intent: HomeIntentProtocol { container.intent }
    private var state: HomeModelStatePotocol { container.model }
    
    var body: some View {
        TabView {
            ForEach(0..<state.items.count, id: \.self) { index in
                CustomView().tabItem {
                    Label("Home \(index)", image: "home")
                }
            }
        }
    }
}

struct CustomView: View {
    @State private var text: String = ""

    var body: some View {
        Text(text)
    }
}
