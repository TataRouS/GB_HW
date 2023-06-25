//
//  ProductRequestFactory.swift
//  GBShop
//
//  Created by Nata Kuznetsova on 25.06.2023.
//

import Foundation
import Alamofire

protocol ProductRequestFactory {
    func getProduct(productId: Int, completionHandler: @escaping (AFDataResponse<ProductResult>) -> Void)
}
