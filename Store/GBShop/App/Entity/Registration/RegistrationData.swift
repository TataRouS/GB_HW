//
//  RegistrationData.swift
//  GBShop
//
//  Created by Nata Kuznetsova on 15.06.2023.
//

import Foundation

struct RegistrationData {

    let id : Int
    let username: String
    let password: String
    let email: String
    let gender: Gender.RawValue
    let creditCard: String
    let bio: String
}
