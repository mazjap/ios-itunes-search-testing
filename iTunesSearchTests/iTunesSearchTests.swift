//
//  iTunesSearchTests.swift
//  iTunesSearchTests
//
//  Created by Jordan Christensen on 10/15/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import iTunes_Search

class iTunesSearchTests: XCTestCase {

    func testForSomeResult() {
        let controller = SearchResultController()
        let resultsExpectation = expectation(description: "Wait for results")
        controller.performSearch(for: "GarageBand", resultType: .software) {
            resultsExpectation.fulfill()
        }
        wait(for: [resultsExpectation], timeout: 5)
        XCTAssertTrue(controller.searchResults.count > 0)
    }
}
