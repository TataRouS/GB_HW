//
//  AddReviewRequestFactory.swift
//  GBShop
//
//  Created by Nata Kuznetsova on 03.07.2023.
//

import Foundation
import Alamofire

protocol AddReviewRequestFactory {
    func getAddReview(idUser: Int, text: String, completionHandler: @escaping (AFDataResponse<AddReviewResult>) -> Void)
}
