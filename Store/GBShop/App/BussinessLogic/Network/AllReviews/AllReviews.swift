//
//  AllReviews.swift
//  GBShop
//
//  Created by Nata Kuznetsova on 03.07.2023.
//

import Foundation
import Alamofire

class AllReviews: AbstractRequestFactory {
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

extension AllReviews: AllReviewsRequestFactory {
    func getAllReviews(productId: Int,
                       completionHandler: @escaping (AFDataResponse<[AllReviewsResult]>) -> Void) {
        let requestModel = AllReviewsRequest(baseUrl: baseUrl,
                                             productId: productId)
        self.request(request: requestModel,
                     completionHandler: completionHandler)
    }
}

extension AllReviews {
    struct AllReviewsRequest: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .get
        let path: String = "allReviews"

        var productId: Int

        var parameters: Parameters? {
            return [
                "product_id": productId
            ]
        }
    }
}
