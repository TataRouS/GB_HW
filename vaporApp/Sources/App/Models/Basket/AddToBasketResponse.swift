//
//  File.swift
//  
//
//  Created by Nata Kuznetsova on 07.07.2023.
//

import Foundation
import Vapor

struct AddToBasketResponse: Content {
    let result: Int
    let errorMessage: String?
}
