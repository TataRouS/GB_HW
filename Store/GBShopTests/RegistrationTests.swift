//
//  RegistrationTests.swift
//  GBShop
//
//  Created by Nata Kuznetsova on 25.06.2023.
//

import XCTest
@testable import GBShop

class RegistrationTests: XCTestCase {
    let expectation = XCTestExpectation(description: "Registration")

    var requestFactory: RequestFactory!
    var registration: RegistrationRequestFactory!

    override func setUp() {
        super.setUp()
        requestFactory = RequestFactory()
        registration = requestFactory.makeRegistrationRequestFactory()
    }

    override func tearDown() {
        super.tearDown()
        requestFactory = nil
        registration = nil
    }

    func testShouldRegistrate() throws {
        let registrationData = RegistrationData(id: 123,
                                                username: "Somebody",
                                                password: "mypassword",
                                                email: "some@some.ru",
                                                gender: Gender.man.rawValue,
                                                creditCard: "9872389-2424-234224-234",
                                                bio: "This is good! I think I will switch to another language")

        registration.register(registrationData: registrationData) { response in
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
