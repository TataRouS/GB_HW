//
//  AllReviewsRequestFactory.swift
//  GBShop
//
//  Created by Nata Kuznetsova on 03.07.2023.
//

import Foundation
import Alamofire

protocol AllReviewsRequestFactory {
    func getAllReviews(productId: Int, completionHandler: @escaping (AFDataResponse<[AllReviewsResult]>) -> Void)
}
