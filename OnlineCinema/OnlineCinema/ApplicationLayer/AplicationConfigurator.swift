//
//  AplicationConfigurator.swift
//  OnlineCinema
//
//  Created by Artem Kislitsyn on 11.03.2024.
//

import Foundation


class AplicationConfigurator {
    private var container: Container
    private let factories: [Assembly] = [
        ApplicationLayerAssembly()
    ]
    
    init(container: Container = .shared) {
        self.container = container
        do {
            try factories.forEach { try $0.assemble(container: container) }

                    
        } catch {
            print(error)
        }

    }
}
