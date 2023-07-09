//
//  PayBasket.swift
//  GBShop
//
//  Created by Nata Kuznetsova on 07.07.2023.
//

import Foundation
import Alamofire

class PayBasket: AbstractRequestFactory {
    let errorParser: AbstractErrorParser
    let sessionManager: Session
    let queue: DispatchQueue
    let baseUrl = URL(string: "http://127.0.0.1:8080")!

    init(
        errorParser: AbstractErrorParser,
        sessionManager: Session,
        queue: DispatchQueue = DispatchQueue.global(qos: .utility)) {
        self.errorParser = errorParser
        self.sessionManager = sessionManager
        self.queue = queue
    }
}

extension PayBasket: PayBasketRequestFactory {
    func payBasket(userId: Int, completionHandler: @escaping (AFDataResponse<PayBasketResult>) -> Void) {
        let requestModel = PayBasketRequest(baseUrl: baseUrl,
                                            userId: userId)
        self.request(request: requestModel,
                     completionHandler: completionHandler)
    }
}

extension PayBasket {
    struct PayBasketRequest: RequestRouter {
        var baseUrl: URL
        var method: HTTPMethod = .post
        var path: String = "payBasket.json"

        var userId: Int

        var parameters: Parameters? {
            return [
                "id_user": userId
            ]
        }
    }
}
