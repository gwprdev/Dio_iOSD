//
//  GlobalModel.swift
//  MarketCoin
//
//  Created by Gilvan Wemerson on 20/05/23.
//

import Foundation

struct GlobalModel: Codable {
    let data: CryptocurrencyModel
}

//Mark: - CryptocurrencyModel
struct CryptocurrencyModel: Codable {
    let activeCryptocurrencies: Int //cripto ativas
    let upcommingIcos: Int // Próximos icos
    let ongoingIcos: Int // icos em andamento
    let endedIcos: Int // terminou os icos
    let markets: Int // mercados
    let totalMarketCap: [String: Double] // Valor total de Mercado por moeda
    let totalVolume: [String: Double] // Volume total por moeda
    let marketCapPercentage: [String: Double] // Porcentagem de capitalização de mercado por moeda
    let marketCapChangePercentage24HUsd: Double // Porcentagem de alteração de mercado 24h em dolar
    let updateAt: Int // dara atualização em timestemp
    
    enum CodingKeys: String, CodingKey {
        case activeCryptocurrencies = "active_cryptocurrencies"
        case upcommingIcos = "upcomming_icos"
        case ongoingIcos = "ongoing_icos"
        case endedIcos = "ended_icos"
        case markets
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
        case updateAt = "update_at"
    }
}
