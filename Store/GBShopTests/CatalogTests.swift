//
//  CatalogTests.swift
//  GBShop
//
//  Created by Nata Kuznetsova on 25.06.2023.
//

import XCTest
@testable import GBShop

class CatalogTests: XCTestCase {
    let expectation = XCTestExpectation(description: "Catalog")

    var requestFactory: RequestFactory!
    var catalog: CatalogRequestFactory!

    override func setUp() {
        super.setUp()
        requestFactory = RequestFactory()
        catalog = requestFactory.makeCatalogRequestFactory()
    }

    override func tearDown() {
        super.tearDown()
        requestFactory = nil
        catalog = nil
    }

    func testShouldGetCatalog() throws {
        catalog.getCatalog(pageNumber: 1, categoryId: 1, category: "develop") { response in
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
