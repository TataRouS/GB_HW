//Created by chizztectep on 24.06.2023 

import Vapor

class CatalogController {
    func getCatalog(_ req: Request) throws -> EventLoopFuture<[CatalogDataResponse]> {
      
        guard let body = try? req.content.decode(CatalogDataRequest.self) else {
            throw Abort(.badRequest)
        }
        print(body)
        var response: [CatalogDataResponse] = []
        response.append(CatalogDataResponse(
            id_product: 123,
            product_name: "Курс Phyton",
            price: 45600
        ))
        
        response.append(CatalogDataResponse(
            id_product: 456,
            product_name: "Курс Ruby",
            price: 40000
        ))
        
        return req.eventLoop.future(response)
    }
    
    func getProduct(_ req: Request) throws -> EventLoopFuture<ProductDataResponse> {
      
        guard let body = try? req.content.decode(ProductDataRequest.self) else {
            throw Abort(.badRequest)
        }
        print(body)
        
        let response = ProductDataResponse(
            result: 1,
            product_name: "Курс iOS-разработка",
            product_price: 55500,
            product_description: "Семинары + лекции",
            errorMessage: nil
        )
        
        return req.eventLoop.future(response)
    }
}
