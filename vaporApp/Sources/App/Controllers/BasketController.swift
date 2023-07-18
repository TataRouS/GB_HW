//
//  File.swift
//  
//
//  Created by Nata Kuznetsova on 07.07.2023.
//

import Foundation
import Vapor

class BasketController {
    
    func addToBasket(_ req: Request) throws -> EventLoopFuture<AddToBasketResponse> {
        guard let body = try? req.content.decode(AddToBasketRequest.self) else {
            throw Abort(.badRequest)
        }
        
        let response = AddToBasketResponse(result: 1, errorMessage: nil)
        return req.eventLoop.future(response)
    }
    
    func deleteFromBasket(_ req: Request) throws -> EventLoopFuture<deleteFromBasketResponse> {
        guard let body = try? req.content.decode(deleteFromBasketRequest.self) else {
            throw Abort(.badRequest)
        }
        
        let response = deleteFromBasketResponse(result: 1, errorMessage: nil)
        return req.eventLoop.future(response)
    }
    
    func payBasket(_ req: Request) throws -> EventLoopFuture<PayBasketResponse> {
        guard let body = try? req.content.decode(PayBasketRequest.self) else {
            throw Abort(.badRequest)
        }
        
        var contens: [ProductDataResponse] = []
        contens.append(ProductDataResponse(
            result: 1,
            product_name: "Курс Тестирование ПО",
            product_price: 15000,
            product_description: "Курс по Тестированию ПО",
            errorMessage: nil
        ))
 
        contens.append(ProductDataResponse(
            result: 2,
            product_name: "Курс Автоматизация Тестирования ПО",
            product_price: 15000,
            product_description: "Курсы по Тестированию ПО",
            errorMessage: nil
        ))
        
        let response = PayBasketResponse(
            amount: 30000,
            countGoods:2,
            contents: contens
            )
                    
        return req.eventLoop.future(response)
    }
    
    
}

