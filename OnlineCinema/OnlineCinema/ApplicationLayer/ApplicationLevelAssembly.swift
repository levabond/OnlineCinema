//
//  ApplicationLevelAssembly.swift
//  OnlineCinema
//
//  Created by Artem Kislitsyn on 11.03.2024.
//

import Foundation

struct ApplicationLayerAssembly: Assembly {

    func assemble(container: Container) throws {
        try registerApplicationConfig(container)
    }

    func registerApplicationConfig(_ container: Container) throws {
        container.register(Configuration.self) { _ in
            DefaultAppConfig()
        }
    }
}
