//
//  ListCoinDataProvider.swift
//  MarketCoin
//
//  Created by Gilvan Wemerson on 21/05/23.
//

import Foundation

protocol ListCoinDataProviderDelegate: GenericDataProviderDelegate {}

class ListCoinDataProvider:
    DataProviderManager<ListCoinDataProviderDelegate, [CoinModel]> {
    private let coinsStore: CoinsStoreProtocol?
    
    init(coinsStore: CoinsStoreProtocol = CoinStore()) {
        self.coinsStore = coinsStore
    }
    
    func fetchListCoins(by vsCurrency: String,
                        with cryptocurrency: [String]?,
                        orderBy order: String,
                        total parPage: Int,
                        page: Int,
                        percentagePrice: String){
        
        coinsStore?.fetchLisCoins(by: vsCurrency,
                                  with: cryptocurrency,
                                  orderBy: order,
                                  total: parPage,
                                  page: page,
                                  percentagePrice: percentagePrice,
                                  completion: {result, error in
            if let error {
                self.delegate?.errorData(self.delegate, error: error)
            }
            
            if let result {
                self.delegate?.success(model: result)
            }
            
        })
    }
    
}
