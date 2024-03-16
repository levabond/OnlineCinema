//
//  OnlineCinemaUITests.swift
//  OnlineCinemaUITests
//
//  Created by Лев Бондаренко on 07.03.2024.
//

import XCTest

final class OnlineCinemaUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
        try super.setUpWithError()
    }

    func testExample() throws {
        let app = XCUIApplication()
        app.launch()
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
