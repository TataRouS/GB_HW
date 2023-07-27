//
//  ProductTests.swift
//  GBShop
//
//  Created by Nata Kuznetsova on 25.06.2023.
//

import XCTest
@testable import GBShop

class ProductTests: XCTestCase {
    let expectation = XCTestExpectation(description: "Product")

    var requestFactory: RequestFactory!
    var product: ProductRequestFactory!

    override func setUp() {
        super.setUp()
        requestFactory = RequestFactory()
        product = requestFactory.makeProductRequestFactory()
    }

    override func tearDown() {
        super.tearDown()
        requestFactory = nil
        product = nil
    }

    func testShouldGetCatalog() throws {
        product.getProduct(productId: 1) { response in
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
