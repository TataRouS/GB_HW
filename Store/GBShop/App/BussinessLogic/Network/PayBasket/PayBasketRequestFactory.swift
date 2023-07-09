//
//  PayBasketRequestFactory.swift
//  GBShop
//
//  Created by Nata Kuznetsova on 07.07.2023.
//

import Foundation
import Alamofire

protocol PayBasketRequestFactory {
    func payBasket(userId: Int, completionHandler: @escaping (AFDataResponse<PayBasketResult>) -> Void)
}
