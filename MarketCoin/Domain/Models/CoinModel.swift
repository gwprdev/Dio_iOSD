//
//  CoinModel.swift
//  MarketCoin
//
//  Created by Gilvan Wemerson on 20/05/23.
//

import Foundation

// MARK: - CoinModel
struct CoinModel: Codable {
    let id, symbol, name: String
    let image: String
    let currentPrice: Double?, marketCap: Double?
    let marketCapRank: Int?
    let fullyDilutedValuation: Double?
    let totalVolume: Double?, high24H: Double?, low24H: Double?
    let priceChange24H: Double?, priceChangePercentage24H: Double?
    let marketCapChange24H: Double?
    let marketCapChangePercentage24H: Double?
    let circulatingSupply: Double?
    let totalSupply: Double?
    let maxSupply: Double?
    let ath: String?
    let athChangePercentage: Double?
    let athDate: String?
    let atl, atlChangePercentage: String?
    let atlDate: String?
    let lastUpdated: String?
    let priceChangePercentage1H: Double?
    let priceChangePercentage7D: Double?
    let priceChangePercentage14D: Double?
    let priceChangePercentage30D: Double?
    let priceChangePercentage200D: Double?
    let priceChangePercentage1Y: Double?

    enum CodingKeys: String, CodingKey {
        case id, symbol, name, image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case fullyDilutedValuation = "fully_diluted_valuation"
        case totalVolume = "total_volume"
        case high24H = "high_24h"
        case low24H = "low_24h"
        case priceChange24H = "price_change_24h"
        case priceChangePercentage24H = "price_change_percentage_24h"
        case marketCapChange24H = "market_cap_change_24h"
        case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
        case circulatingSupply = "circulating_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case ath
        case athChangePercentage = "ath_change_percentage"
        case athDate = "ath_date"
        case atl
        case atlChangePercentage = "atl_change_percentage"
        case atlDate = "atl_date"
        case lastUpdated = "last_updated"
        case priceChangePercentage1H = "price_change_percentage_1h"
        case priceChangePercentage7D = "price_change_percentage_7d"
        case priceChangePercentage14D = "price_change_percentage_14d"
        case priceChangePercentage30D = "price_change_percentage_30d"
        case priceChangePercentage200D = "price_change_percentage_200d"
        case priceChangePercentage1Y = "price_change_percentage_1y"
    }
}
