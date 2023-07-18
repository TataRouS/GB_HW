//
//  File.swift
//  
//
//  Created by Nata Kuznetsova on 07.07.2023.
//

import Foundation
import Vapor


struct AddToBasketRequest: Content {
    var id_product: Int
    var quantity: Int
}
