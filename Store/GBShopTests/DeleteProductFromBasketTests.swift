//
//  DeleteProductFromBasketTests.swift
//  GBShopTests
//
//  Created by Nata Kuznetsova on 06.07.2023.
//

import Foundation
@testable import GBShop

class DeleteProductFromBasketTests: XCTestCase {
    let expectation = XCTestExpectation(description: "DeleteProductFromBasket")

    var requestFactory: RequestFactory!
    var deleteProductFromBasket: DeleteProductFromBasketRequestFactory!

    override func setUpWithError() throws {
        requestFactory = RequestFactory()
        deleteProductFromBasket = requestFactory.makeDeleteProductFromBasket()
    }

    override func tearDownWithError() throws {
        requestFactory = nil
        deleteProductFromBasket = nil
    }

    func testShouldGetAllReviews() throws {
        deleteProductFromBasket.deleteProductFromBasket(productId: 1) { response in
            switch response.result {
            case .success(_): break
            case .failure:
                XCTFail()
            }
            self.expectation.fulfill()
        }
    }

    func testPerformanceExample() throws {
        self.measure {
        }
    }
}
