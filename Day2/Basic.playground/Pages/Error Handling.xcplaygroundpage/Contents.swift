//: [Previous](@previous)

import Foundation

enum NetworkError: Error {
    case badURL
    case noInternet
    case serverError(code: Int)
}

func fetchData(from url: String) throws -> String {
    guard url == "https://www.google.com" else {
        throw NetworkError.badURL
    }
    return "data loaded successfully"
}

let result = try? fetchData(from: "invalid_url")
print(result)  // nil, just simple wala error handling









