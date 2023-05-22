//
//  GlobalRouter.swift
//  MarketCoin
//
//  Created by Gilvan Wemerson on 21/05/23.
//

import Foundation

enum GlobalRouter {
    case global
    
    var path: String {
        switch self {
        case .global:
            return API.global
        }
    }
    
    func asURLResquest() throws -> URL? {
        guard let url = URL(string: API.baseURL) else {return nil}
        let urlRequest = URLRequest(url: url.appendingPathComponent(path))
        switch self {
        case .global:
            return urlRequest.url
        }
    }
}
