//
//  Injectable.swift
//  OnlineCinema
//
//  Created by Artem Kislitsyn on 11/03/2024.
//  Copyright © 2024 Artem Kislitsyn. All rights reserved

@propertyWrapper
struct Injectable<T> {

	private let container: Container
	private let name: String?

	var wrappedValue: T {
		guard let instance = try? container.resolve(T.self, named: name) else {
			fatalError("Unable to resolve dependency: \(T.Type.self)")
		}
		return instance
	}

	init(container: Container = .shared, name: String? = nil) {
		self.container = container
		self.name = name
	}
}
