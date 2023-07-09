//
//  PayBasketResult.swift
//  GBShop
//
//  Created by Nata Kuznetsova on 07.07.2023.
//

import Foundation

struct PayBasketResult: Codable {
    var amount: Int
    var countGoods: Int
    var contents: [ProductResult]
}
