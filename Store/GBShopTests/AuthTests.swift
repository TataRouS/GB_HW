//
//  AuthTests.swift
//  GBShop
//
//  Created by Nata Kuznetsova on 25.06.2023.
//

import XCTest
@testable import GBShop

class AuthTests: XCTestCase {
    let expectation = XCTestExpectation(description: "Login")

    var requestFactory: RequestFactory!
    var auth: AuthRequestFactory!

    override func setUp() {
        super.setUp()
        requestFactory = RequestFactory()
        auth = requestFactory.makeAuthRequestFactory()
    }

    override func tearDown() {
        super.tearDown()
        requestFactory = nil
        auth = nil
    }

    func testShouldLogin() throws {
        auth.login(userName: "Somebody", password: "mypassword") { response in
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
