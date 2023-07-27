//
//  ProductResult.swift
//  GBShop
//
//  Created by Nata Kuznetsova on 25.06.2023.
//

import Foundation

struct ProductResult: Codable {
    let result: Int
    let name: String
    let description: String
    let price: Int

    enum CodingKeys: String, CodingKey {
        case result = "result"
        case name = "product_name"
        case description = "product_description"
        case price = "product_price"
    }
}
