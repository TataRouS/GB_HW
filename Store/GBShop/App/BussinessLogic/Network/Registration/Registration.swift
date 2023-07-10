//
//  Registration.swift
//  GBShop
//
//  Created by Nata Kuznetsova on 15.06.2023.
//

import Foundation
import Alamofire

class Registration: AbstractRequestFactory {
    let errorParser: AbstractErrorParser
    let sessionManager: Session
    let queue: DispatchQueue
    let baseUrl = URL(string:"http://127.0.0.1:8080/")!

    init(
        errorParser: AbstractErrorParser,
        sessionManager: Session,
        queue: DispatchQueue = DispatchQueue.global(qos: .utility)) {
        self.errorParser = errorParser
        self.sessionManager = sessionManager
        self.queue = queue
    }
}

extension Registration: RegistrationRequestFactory {
    func register(registrationData: UserData, completionHandler: @escaping (AFDataResponse<RegistrationResult>) -> Void) {
        let requestModel = RegistrationRequest(baseUrl: baseUrl, registrationData: registrationData)
        self.request(request: requestModel, completionHandler: completionHandler)
    }
}

extension Registration {
    struct RegistrationRequest: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = "registerUser.json"

        let registrationData: UserData
        var parameters: Parameters? {
            return [
                "id_user" : registrationData.id,
                "username" : registrationData.username,
                "password" : registrationData.password,
                "email" : registrationData.email,
                "gender": registrationData.gender,
                "credit_card" : registrationData.creditCard,
                "bio" : registrationData.bio
            ]
        }
    }
}
