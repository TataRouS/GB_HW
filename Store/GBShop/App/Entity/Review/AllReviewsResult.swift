//
//  AllReviewsResult.swift
//  GBShop
//
//  Created by Nata Kuznetsova on 03.07.2023.
//

import Foundation

struct AllReviewsResult: Codable {
    let idReview: Int
    let idProduct: Int
    let text: String
    let user: Int
    let errorMessage: String?

    enum CodingKeys: String, CodingKey {
        case idReview = "id_review"
        case idProduct = "id_product"
        case text = "text"
        case user = "id_user"
        case errorMessage = "errorMessage"
    }
}
