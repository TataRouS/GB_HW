//
//  UpdateUserRequestFactory.swift
//  GBShop
//
//  Created by Nata Kuznetsova on 15.06.2023.
//

import Foundation
import Alamofire

protocol UpdateUserRequestFactory {
    func updateUser(updateUserData: UpdateUserData, completionHandler: @escaping (AFDataResponse<UpdateUserResult>) -> Void)
}
