//
//  UpdateUser.swift
//  GBShop
//
//  Created by Nata Kuznetsova on 15.06.2023.
//

import Foundation
import Alamofire

class UpdateUser: AbstractRequestFactory {
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

extension UpdateUser: UpdateUserRequestFactory {

    func updateUser(updateUserData: UserData,
                    completionHandler: @escaping (AFDataResponse<UpdateUserResult>) -> Void) {
        let requestModel = UpdateUserRequest(baseUrl: baseUrl, updateUserData: updateUserData)
        self.request(request: requestModel, completionHandler: completionHandler)
    }
}

extension UpdateUser {
    struct UpdateUserRequest: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = "changeUserData.json"

        let updateUserData: UserData
        var parameters: Parameters? {
            return [
                "id_user" : updateUserData.id,
                "username" : updateUserData.username,
                "password" : updateUserData.password,
                "email" : updateUserData.email,
                "gender": updateUserData.gender,
                "credit_card" : updateUserData.creditCard,
                "bio" : updateUserData.bio
            ]
        }
    }
}
