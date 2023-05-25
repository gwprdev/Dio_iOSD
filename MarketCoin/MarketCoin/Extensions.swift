//
//  Extensions.swift
//  MarketCoin
//
//  Created by Gilvan Wemerson on 21/05/23.
//

import Foundation

extension URL {
    var queryParameters: [String: String]? {
        guard let components = URLComponents(url: self, resolvingAgainstBaseURL: false),
              let querItems = components.queryItems else { return nil}
        var items: [String: String] = [:]
        
        for querItem in querItems {
            items[querItem.name] = querItem.value
        }
        
        return items
    }
    
    func appendingQueryParameters(path: String, parameters: [String: String]? = nil) -> URL? {
        guard var urlComponents = URLComponents(url: self, resolvingAgainstBaseURL: true) else { return nil }
        
        guard let parameters = parameters else {
            guard let url = urlComponents.url else { return nil }
            return url.appendingPathComponent(path)
        }
        
        urlComponents.queryItems = (urlComponents.queryItems ?? []) + parameters.map { URLQueryItem(name: $0, value: $1)}
        guard let url = urlComponents.url else { return nil }
        return url.appendingPathComponent(path)
    }
}

extension Error {
    var errorCode: Int? {
        return (self as NSError).code
    }
}

extension Double {
    
    func toCurrency() -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .currency
        numberFormatter.locale = Locale(identifier: "pt_Br")
        
        guard let value = numberFormatter.string(from: NSNumber(value: self)) else {return String(self)}
        return value
    }
    
    func toPercentage() -> String {
        let value = String(format: "%.1f", self).replacingOccurrences(of: "-", with: "")
        
        if self.sign == .minus {
            return "\u{2193} \(value)%"
        }else{
            return "\u{2191} \(value)%"
        }
    }
}

