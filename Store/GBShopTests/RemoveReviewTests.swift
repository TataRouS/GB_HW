//
//  RemoveReviewTests.swift
//  GBShopTests
//
//  Created by Nata Kuznetsova on 03.07.2023.
//

import XCTest
@testable import GBShop

class RemoveReviewTests: XCTestCase {
    let expectation = XCTestExpectation(description: "RemoveReview")

    var requestFactory: RequestFactory!
    var removeReview: RemoveReviewRequestFactory!

    override func setUpWithError() throws {
        requestFactory = RequestFactory()
        removeReview = requestFactory.makeRemoveReviewRequestFactory()
    }

    override func tearDownWithError() throws {
        requestFactory = nil
        removeReview = nil
    }

    func testShouldRemoveReview() throws {
        removeReview.getRemoveReview(idComment: 1) { response in
            switch response.result {
            case .success(_): break
            case .failure:
                XCTFail()
            }
            self.expectation.fulfill()
        }
        wait(for: [expectation], timeout: 10.0)
    }

    func testPerformanceExample() throws {
        self.measure {
        }
    }
}
