//
//  File.swift
//  
//
//  Created by Nata Kuznetsova on 08.07.2023.
//

import Foundation
import Vapor

struct PayBasketResponse: Content {
    var amount: Int
    var countGoods: Int
    var contents: [ProductDataResponse]
}
