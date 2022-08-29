//
//  StockViewModel.swift
//  StockApp
//
//  Created by Rober on 26-08-22.
//

import Foundation

class StockViewModel {
    
    private(set) var stocks: [StocksViewModel] = []
    
    func populateStocks(url: URL) async {
        
        do {
            let stocks = try await WebService().getStocks(url: url)
            self.stocks = stocks.map(StocksViewModel.init)
     
        } catch {
            print(error)
        }
    }
}

struct StocksViewModel {
    
    private let stock: Stock
    
    init(stock: Stock) {
        self.stock = stock
    }
    
    var symbol: String {
        stock.symbol
    }
    
    var description: String {
        stock.description
    }
    
    var price: Double {
        stock.price
    }
    
}
