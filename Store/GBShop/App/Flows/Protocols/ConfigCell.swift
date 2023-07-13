//
//  ConfigCell.swift
//  GBShop
//
//  Created by Nata Kuznetsova on 11.07.2023.
//

import Foundation

protocol ConfigCell {
    associatedtype T

    static var reuseId: String { get }
    func configCell(with value: T)
}
