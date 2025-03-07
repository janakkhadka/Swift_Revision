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

let result = try? fetchData(from: "https://www.google.com")
//print(result)  // nil, just simple wala error handling

//do catch
//do {
//    let result = try fetchData(from: "invalid_url")
//    print(result)
//} catch NetworkError.badURL {
//    print("Invalid URL provided.")
//} catch NetworkError.noInternet {
//    print("No internet connection.")
//} catch let error {
//    print("An unexpected error occurred: \(error)")
//}


//example 2
enum FileError: Error {
    case fileNotFound
}

func readFile(named fileName: String) throws -> String {
    if fileName != "data.txt" {
        throw FileError.fileNotFound
    }
    return "File content here..."
}

//do {
//    let content = try readFile(named: "wrongfile.txt")
//    print(content)
//} catch FileError.fileNotFound {
//    print("File not found.")
//}


//example 3
enum MathError: Error {  // error vaneko protocol ho
    case divisionByZero
}

func divide(_ a: Double, by b: Double) throws -> Double {
    if b == 0 {
        throw MathError.divisionByZero
    }
    return a/b
}

//do {
//    let result = try divide(10, by: 0)
//    print(result)
//} catch MathError.divisionByZero {
//    print("Cannot divide by zero")
//}

//example 4
enum UserError: Error {
    case invalidAge
}

struct User {
    let name: String
    let age: Int
    
    init(name: String, age: Int) throws {
        if age < 0 {
            throw UserError.invalidAge
        }
        
        self.name = name
        self.age = age
    }
}

//do {
//    let user = try User(name: "janak", age: 5)
//    print(user)
//} catch UserError.invalidAge {
//    print("Enter valid age")
//}





