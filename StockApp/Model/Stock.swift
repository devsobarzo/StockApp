//
//  Stock.swift
//  StockApp
//
//  Created by Rober on 26-08-22.
//

import Foundation

struct Stock : Decodable {
    let symbol: String
    let description: String
    let price: Double
}

