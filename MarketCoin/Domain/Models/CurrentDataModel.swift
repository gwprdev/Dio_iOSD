//
//  CurrentDataModel.swift
//  MarketCoin
//
//  Created by Gilvan Wemerson on 20/05/23.
//

import Foundation

// MARK: - CoinModel
struct CurrentDataModel: Codable {
    let id: String
    let symbol: String
    let name: String
    let currentDataDescription: [String: String]
    let marketCapRank: Int?
    let image: ImageModel
    let marketData: MarketDataModel
    let lastUpdated: Data
    
    
    enum CodingKeys: String, CodingKey {
        case id
        case symbol
        case name
        case currentDataDescription = "description"
        case marketCapRank = "market_cap_rank"
        case image
        case marketData = "market_data"
        case lastUpdated = "last_updated"
        
    }
}

// MARK: - ImageModle
struct ImageModel: Codable{
    let thumb: String
    let small: String
    let large: String
}
    
// MARK: - MarketDataModel
struct MarketDataModel: Codable {
    let currentPrice: [String: Double]
    let marketCap: [String: Double]
    let fullyDilutedValuation: [String: Double]
    let totalVolume: [String: Double]
    let high24h: [String: Double]
    let low24H: [String: Double]
    let priceChangePercentage1H: [String: Double]
    let priceChangePercentage24H: [String: Double]
    let priceChangePercentage7D: [String: Double]
    let priceChangePercentage14D: [String: Double]
    let priceChangePercentage30D: [String: Double]
    let priceChangePercentage200D: [String: Double]
    let priceChangePercentage1Y: [String: Double]
    let ath: [String: Double]
    let athChangePercentage: [String: Double]
    let athDate: [String: Date]
    let atl: [String: Double]
    let atlDate: [String: Date]
    let totalSupply: Double?
    let maxSupply: Double?
    let circulatingsupply: Double
    
    enum CodingKeys: String, CodingKey {
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case fullyDilutedValuation = "fully_diluted_valuation"
        case totalVolume = "total_volume"
        case high24h = "high_24h"
        case low24H = "low_24h"
        case priceChangePercentage1H = "price_change_percentage_1h"
        case priceChangePercentage24H = "price_change_percentage_24h"
        case priceChangePercentage7D = "price_change_percentage_7d"
        case priceChangePercentage14D = "price_change_percentage_14d"
        case priceChangePercentage30D = "price_change_percentage_30d"
        case priceChangePercentage200D = "price_change_percentage_200d"
        case priceChangePercentage1Y = "price_change_percentage_1y"
        case ath
        case athChangePercentage = "ath_change_percentage"
        case athDate = "ath_date"
        case atl
        case atlDate = "atl_date"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case circulatingsupply = "circulating_supply"
    }
    
}
