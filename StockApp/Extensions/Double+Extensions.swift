//
//  Double+Extensions.swift
//  StockApp
//
//  Created by Rober on 26-08-22.
//

import Foundation

extension Double {
    
    func formatAsCurrency() -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter.string(from: NSNumber(value: self)) ?? ""
    }
    
}
