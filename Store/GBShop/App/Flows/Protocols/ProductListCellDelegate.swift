//
//  ProductListCellDelegate.swift
//  GBShop
//
//  Created by Nata Kuznetsova on 19.07.2023.
//

import Foundation

protocol ProductListCellDelegate {
    func buy(cell: ProductListTableViewCell)
    func delete(cell: ProductListTableViewCell)
}
