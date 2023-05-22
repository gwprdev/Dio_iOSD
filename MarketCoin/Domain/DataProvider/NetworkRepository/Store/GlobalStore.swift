//
//  GlobalStore.swift
//  MarketCoin
//
//  Created by Gilvan Wemerson on 21/05/23.
//

import Foundation

protocol GlobalStoreProtocol: GenericStoreProtocol {
    func fetchGlobal(completion: @escaping completion<GlobalModel?>)
}

class GlobalStore: GenericStoreRequest, GlobalStoreProtocol{
    func fetchGlobal(completion: @escaping completion<GlobalModel?>) {
        do{
            guard let url = try GlobalRouter.global.asURLResquest() else {return completion(nil, error)}
            request(url: url, completion: completion)
        }catch let error{
            completion(nil, error)
        }
    }
    
}
