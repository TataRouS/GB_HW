//
//  RemoveReviewRequest.swift
//  GBShop
//
//  Created by Nata Kuznetsova on 03.07.2023.
//

import Foundation
import Alamofire

protocol RemoveReviewRequestFactory {
    func getRemoveReview(idComment: Int, completionHandler: @escaping (AFDataResponse<RemoveReviewResult>) -> Void)
}
