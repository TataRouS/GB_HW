//
//  DeleteProductFromBasketRequestFactory.swift
//  GBShop
//
//  Created by Nata Kuznetsova on 06.07.2023.
//

import Foundation
import Alamofire

protocol DeleteProductFromBasketRequestFactory {
    func deleteProductFromBasket(productId: Int, completionHandler: @escaping (AFDataResponse<DeleteProductFromBasketResult>) -> Void)
}
