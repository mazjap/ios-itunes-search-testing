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
        let mock = MockDataLoader()
        mock.data = goodResults
        let controller = SearchResultController(dataLoader: mock)
        let resultsExpectation = expectation(description: "Wait for results")
        controller.performSearch(for: "GarageBand", resultType: .software) {
            resultsExpectation.fulfill()
        }
        wait(for: [resultsExpectation], timeout: 5)
        XCTAssertTrue(controller.searchResults.count == 2, "Expecting 2 results for GarageBand")
        XCTAssertEqual(controller.searchResults[0].title, "GarageBand")
        XCTAssertEqual(controller.searchResults[0].artist, "Apple")
    }
    
    func testBadResult() {
        let mock = MockDataLoader()
        mock.data = badResults
        let controller = SearchResultController(dataLoader: mock)
        let resultsExpectation = expectation(description: "Wait for results")
        controller.performSearch(for: "GarageBand", resultType: .software) {
            resultsExpectation.fulfill()
        }
        wait(for: [resultsExpectation], timeout: 5)
        XCTAssertTrue(controller.searchResults.count == 0, "Expecting 0 results for bad data")
        XCTAssertNotNil(controller.error)
    }
    
    func testNoResults() {
        let mock = MockDataLoader()
        mock.data = noResults
        let controller = SearchResultController(dataLoader: mock)
        let resultsExpectation = expectation(description: "Wait for results")
        controller.performSearch(for: "asfaoihsga", resultType: .software) {
            resultsExpectation.fulfill()
        }
        wait(for: [resultsExpectation], timeout: 5)
        XCTAssertTrue(controller.searchResults.count == 0, "Expecting 0 results for bad data")
        XCTAssertNil(controller.error)
    }
}
