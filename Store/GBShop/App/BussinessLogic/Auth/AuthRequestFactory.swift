//
//  AuthRequestFactory.swift
//  GBShop
//
//  Created by Nata Kuznetsova on 15.06.2023.
//

import Foundation
import Alamofire

protocol AuthRequestFactory {
    func login(userName: String, password: String, completionHandler: @escaping (AFDataResponse<LoginResult>) -> Void)
}
