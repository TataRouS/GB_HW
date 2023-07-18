//Created by chizztectep on 25.06.2023 

import Vapor

struct GetReviewsResponse: Content {
    let id_user: User
    let id_review: Int
    let text: String
    let id_product: Int
    let errorMessage: String?
}
