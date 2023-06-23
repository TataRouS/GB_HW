//
//  AbstractErrorParser.swift
//  GBShop
//
//  Created by Nata Kuznetsova on 23.06.2023.
//

import Foundation
import Alamofire


protocol AbstractErrorParser {
func parse(_ result: Error) -> Error
func parse(response: HTTPURLResponse?, data: Data?, error: Error?) -> Error?
}
