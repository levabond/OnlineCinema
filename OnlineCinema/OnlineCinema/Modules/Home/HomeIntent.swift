//
//  HomeIntent.swift
//  OnlineCinema
//
//  Created by Лев Бондаренко on 11.03.2024.
//

import SwiftUI

protocol HomeIntentProtocol {
    func viewOnAppear()
    func viewOnDisappear()
    func didTapHandler()
}

enum HomeTypes {
    enum Intent {}
}

/// Отвечает за обработку действий
final class HomeIntent {

    // MARK: Model
    private weak var model: HomeModelActionsProtocol?

    // MARK: Business Data
    private let externalData: HomeTypes.Intent.ExternalData

    // MARK: Life cycle
    init(
        model: HomeModelActionsProtocol,
        externalData: HomeTypes.Intent.ExternalData
    ) {
        self.externalData = externalData
        self.model = model
    }
}

// MARK: - Public
extension HomeIntent: HomeIntentProtocol {

    func viewOnAppear() {}

    func viewOnDisappear() {}
    
    func didTapHandler() {}
}

// MARK: - Helper classes
extension HomeTypes.Intent {
    struct ExternalData {
        let title: String
    }
}
