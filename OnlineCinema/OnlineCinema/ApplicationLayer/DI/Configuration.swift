//
//  Configuration.swift
//  OnlineCinema
//
//  Created by Artem Kislitsyn on 11.03.2024.
//

import Foundation

protocol Configuration {
    var urlSessionConfiguration: URLSessionConfiguration { get }
    
}

class DefaultAppConfig: Configuration {

    var urlSessionConfiguration: URLSessionConfiguration {
        return .default
    }

}
