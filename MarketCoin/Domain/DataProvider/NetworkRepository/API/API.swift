//
//  API.swift
//  MarketCoin
//
//  Created by Gilvan Wemerson on 20/05/23.
//

import Foundation

struct API {
    static let baseURL = "https://api.coingecko.com/api/v3/"
    static let coinsMarkets = "/coins/markets"
    static let coinsByMarketChart = "/coins/%@/market_chart/range"
    static let coinsByOhlc = "/coins/%@/ohlc"
    static let global = "/global"
    static let coinsById = "/coins/%@"
}
