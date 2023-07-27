//Created by chizztectep on 25.06.2023 


import Vapor

class ReviewController {

    func getReviews(_ req: Request) throws -> EventLoopFuture<[GetReviewsResponse]> {
                guard let body = try? req.content.decode(GetReviewsRequest.self) else {
                    print("вылетает здесь")
                    throw Abort(.badRequest)
                }
        print(body)
        
        switch body.id_product {
            case 1:  var response: [GetReviewsResponse] = []
            response.append(GetReviewsResponse(
                id_user: User(id_user: 1, user_login: "Some", user_name: "Igor", user_lastname: "Some"),
                id_review: 1,
                text: "Good",
                id_product: 1,
                errorMessage: nil
            ))
            
            response.append(GetReviewsResponse(
                id_user:  User(id_user: 2, user_login: "Dima", user_name: "Dima", user_lastname: "Dima"),
                id_review: 2,
                text: "Bad",
                id_product: 2,
                errorMessage: nil
            ))
            
            return req.eventLoop.future(response)
         default:
            var response: [GetReviewsResponse] = []
            response.append(GetReviewsResponse(
                id_user:  User(id_user: 0, user_login: "net", user_name: "net", user_lastname: "net"),
                id_review: 0,
                text: "",
                id_product: 0,
                errorMessage: "нет такого курса"
            ))
            return req.eventLoop.future(response)
        }
        
       
        
    }
    
    func addReviews(_ req: Request) throws -> EventLoopFuture<AddReviewsResponse> {
        guard let body = try? req.content.decode(AddReviewsRequest.self) else {
            throw Abort(.badRequest)
        }
        
        switch body.id_user {
        case 123: let response = AddReviewsResponse(result: 1, userMessage: "Ваш отзыв был передан на модерацию")
            return req.eventLoop.future(response)
        default:
            let response = AddReviewsResponse(result: 0, userMessage: "", errorMessage: "мы вас не знаем, идите нахер отсюда")
            return req.eventLoop.future(response)
        }
    }
    
    func removeReview(_ req: Request) throws -> EventLoopFuture<RemoveReviewResponse> {
        guard let body = try? req.content.decode(RemoveReviewRequest.self) else {
            throw Abort(.badRequest)
        }
        
        let response = RemoveReviewResponse(result: 1, errorMessage: nil)
        return req.eventLoop.future(response)
        
        
    }
}
