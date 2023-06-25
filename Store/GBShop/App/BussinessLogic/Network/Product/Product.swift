//
//  Product.swift
//  GBShop
//
//  Created by Nata Kuznetsova on 25.06.2023.
//

import Foundation
import Alamofire

class Product: AbstractRequestFactory {

    let errorParser: AbstractErrorParser
    let sessionManager: Session
    let queue: DispatchQueue
    let baseUrl = URL(string: "https://raw.githubusercontent.com/GeekBrainsTutorial/online-store-api/master/responses/")!

    init(
        errorParser: AbstractErrorParser,
        sessionManager: Session,
        queue: DispatchQueue = DispatchQueue.global(qos: .utility)) {
        self.errorParser = errorParser
        self.sessionManager = sessionManager
        self.queue = queue
    }
}

extension Product: ProductRequestFactory {
    func getProduct(productId: Int, completionHandler: @escaping (AFDataResponse<ProductResult>) -> Void) {
        let requestModel = ProductRequest(baseUrl: baseUrl, productId: productId)
        self.request(request: requestModel, completionHandler: completionHandler)
    }
}

extension Product {
    struct ProductRequest: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .get
        let path: String = "getGoodById.json"

        var productId: Int

        var parameters: Parameters? {
            return [
                "id_product": productId
            ]
        }
    }
}
