//
//  CatalogProductResult.swift
//  GBShop
//
//  Created by Nata Kuznetsova on 25.06.2023.
//

import Foundation

struct CatalogProductResult: Codable {
    let id: Int
    let name: String
    let price: Int

    enum CodingKeys: String, CodingKey {
        case id = "id_product"
        case name = "product_name"
        case price = "price"
    }
}


