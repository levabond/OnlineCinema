//
//  HomeModel.swift
//  OnlineCinema
//
//  Created by Лев Бондаренко on 11.03.2024.
//

import SwiftUI
import Combine
import AVKit

// MARK: - View State
/// Протокол для состояний. Отдаем его View
protocol HomeModelStatePotocol {
    var selectedIndex: Int { get }
    var items: [BottomBarItem] { get }
}

// MARK: - Intent Actions

/// Протокол для событий. Отдаем его Model
protocol HomeModelActionsProtocol: AnyObject {
    func update(selectedIndex: Int)
}

// MARK: - State Impl
final class HomeModel: ObservableObject, HomeModelStatePotocol {
    
    @Published var selectedIndex: Int = 0
    @Published var items: [BottomBarItem] = [
        BottomBarItem(icon: "house.fill", title: "Home", color: .purple),
        BottomBarItem(icon: "heart", title: "Likes", color: .pink)
    ]
}

// MARK: - Actions Protocol
extension HomeModel: HomeModelActionsProtocol {
    
    func update(selectedIndex: Int) {
        self.selectedIndex = selectedIndex
    }
}
