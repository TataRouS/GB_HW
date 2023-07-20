//
//  AddReviewTests.swift
//  GBShopTests
//
//  Created by Nata Kuznetsova on 03.07.2023.
//

import XCTest

@testable import GBShop

class AddReviewTests: XCTestCase {
    let expectation = XCTestExpectation(description: "AddReview")

    var requestFactory: RequestFactory!
    var addReview: AddReviewRequestFactory!

    override func setUpWithError() throws {
        super.setUp()
        requestFactory = RequestFactory()
        addReview = requestFactory.makeAddReviewRequestFactory()
    }

    override func tearDownWithError() throws {
        super.tearDown()
        requestFactory = nil
        addReview = nil
    }

    func testShouldAddReview() throws {
        addReview.getAddReview(idUser: 1, text: "Текст отзыва") { response in
            switch response.result {
            case .success(_): break
            case .failure:
                XCTFail()
            }
            self.expectation.fulfill()
        }
        wait(for: [expectation], timeout: 10.0)
    }
}
