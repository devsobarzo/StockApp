//
//  WebService.swift
//  StockApp
//
//  Created by Rober on 26-08-22.
//

import Foundation

enum StocksError: Error {
    case invalidServerResponse
}

class WebService {
    func getStocks(url: URL) async throws -> [Stock]  {
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw StocksError.invalidServerResponse
            
        }
        return try JSONDecoder().decode([Stock].self, from: data)
        
    }
}
