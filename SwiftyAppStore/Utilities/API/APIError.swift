//
//  APIError.swift
//  SwiftyAppStore
//
//  Created by Mico Infante on 7/31/22.
//

import Foundation

typealias HTTPCode = Int
typealias HTTPCodes = Range<HTTPCode>

extension HTTPCodes {
    static let success = 200..<300
}

enum APIError: Swift.Error {
    case invalidURL
    case unacceptableResponse
    case httpCode(HTTPCode)
}

extension APIError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .invalidURL: return "Malformed URL"
        case let .httpCode(code): return "HTTP code: \(code)"
        case .unacceptableResponse: return "Unaccaptable response from server"
        }
    }
}
