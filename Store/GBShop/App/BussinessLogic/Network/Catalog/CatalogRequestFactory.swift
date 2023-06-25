//
//  CatalogRequestFactory.swift
//  GBShop
//
//  Created by Nata Kuznetsova on 25.06.2023.
//

import Foundation
import Alamofire

protocol CatalogRequestFactory {
    func getCatalog(pageNumber: Int, categoryId: Int, completionHandler: @escaping (AFDataResponse<[CatalogProductResult]>) -> Void)
}
