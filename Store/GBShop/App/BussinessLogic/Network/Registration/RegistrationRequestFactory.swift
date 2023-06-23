//
//  RegistrationRequestFactory.swift
//  GBShop
//
//  Created by Nata Kuznetsova on 15.06.2023.
//

import Foundation
import Alamofire

protocol RegistrationRequestFactory {
    func register(registrationData: RegistrationData, completionHandler: @escaping (AFDataResponse<RegistrationResult>) -> Void)
}
