//
//  HomeAssembler.swift
//  OnlineCinema
//
//  Created by Лев Бондаренко on 11.03.2024.
//

import SwiftUI

enum HomeAssembler {
    static func build(data: HomeTypes.Intent.ExternalData) -> some View {
        let model = HomeModel()
        let intent = HomeIntent(model: model, externalData: data)
        let container = MVIContainer(
            intent: intent as HomeIntentProtocol,
            model: model as HomeModelStatePotocol,
            modelChangePublisher: model.objectWillChange
        )
        let view = HomeView(container: container)
        return view
    }
}
