//
//  LogoutTests.swift
//  GBShop
//
//  Created by Nata Kuznetsova on 25.06.2023.
//

import XCTest
@testable import GBShop

class LogoutTests: XCTestCase {
    let expectation = XCTestExpectation(description: "Logout")

    var requestFactory: RequestFactory!
    var logout: LogoutRequestFactory!

    override func setUp() {
        super.setUp()
        requestFactory = RequestFactory()
        logout = requestFactory.makeLogoutRequestFactory()
    }

    override func tearDown() {
        super.tearDown()
        requestFactory = nil
        logout = nil
    }

    func testShouldLogout() throws {
        logout.logout(id: 123) { response in
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
