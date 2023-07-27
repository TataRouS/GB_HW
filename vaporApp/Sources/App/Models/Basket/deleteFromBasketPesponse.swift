//
//  File.swift
//  
//
//  Created by Nata Kuznetsova on 08.07.2023.
//

import Foundation
import Vapor

struct deleteFromBasketResponse: Content {
    let result: Int
    let errorMessage: String?
}
