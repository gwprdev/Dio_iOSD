//
//  GenericDataProvider.swift
//  MarketCoin
//
//  Created by Gilvan Wemerson on 20/05/23.
//

import Foundation

protocol GenericDataProviderDelegate {
    func success(model: Any)
    func errorData(_ provider: GenericDataProviderDelegate?, error: Error)
}

class DataProviderManager<T,S> {
    var delegate: T?
    var model: S?
}
