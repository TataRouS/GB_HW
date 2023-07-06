//
//  AddProductToBasketRequestFactory.swift
//  GBShop
//
//  Created by Nata Kuznetsova on 06.07.2023.
//

import Foundation
import Alamofire

protocol AddProductToBasketRequestFactory {
    func addProductToBasket(productId: Int, quantity: Int, completionHandler: @escaping (AFDataResponse<AddProductToBasketResult>) -> Void)
}
