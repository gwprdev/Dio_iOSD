//
//  CriptocurrenciesError.swift
//  MarketCoin
//
//  Created by Gilvan Wemerson on 23/05/23.
//

import Foundation

enum CriptocurrenciesError: Error {
    case internalServerError
    case badRequestError
    case notFoundError
    case undefinedError
    
    
    var errorDescription: String {
        switch self {
        case .internalServerError:
            return "Ocorreu um error no Servidor!"
        case .badRequestError:
            return "Sua requisição não foi bem sucedida!"
        case .notFoundError:
            return "O serviço que você está procurando nãoe existe!"
        case .undefinedError:
            return "Ocorreu um erro. Tente novamente mais tarde!"
        }
    }
}
