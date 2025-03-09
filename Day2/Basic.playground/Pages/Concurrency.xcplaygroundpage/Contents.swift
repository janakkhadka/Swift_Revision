//: [Previous](@previous)

import Foundation

//simple program to fetch data
// async le chai function lai asynchronous banauxa
func fetchData() async -> String {
    return "Data fetched!"
}

//await le chai asynchronous function call garna help garxa
//Task {} creates a new concurrent task.
Task {
    let data = await fetchData()
    //print(data)
}

//example 2
//func fetchUserData() async -> String {
//    try? await Task.sleep(nanoseconds: 1_000_000_000) //1 sec
//    return "User Data"
//}
//
//func fetchUserPosts() async -> String {
//    try? await Task.sleep(nanoseconds: 2_000_000_000) //2 seconds
//    return "user posts"
//}
//
//Task{
//    async let user = fetchUserData()
//    async let posts = fetchUserPosts()
//    let result = await (user,posts)
//    //print(await user) //1 sec maa aauxa
//    //print(await posts)  //2 sec maa aauxa
//    //print(result) //2 sec maa aauxa
//}

//example 3
//Task{
//    //print("first execution")
//    try? await Task.sleep(nanoseconds: 1_000_000_000)
//    //print("after 1 second")
//}

//example4
//concurrency with error handling
//enum LoginError: Error {
//    case invalidCredentials
//}
//
//func login(email: String, password: String) async throws -> String {
//    if email != "admin" || password != "admin" {
//        throw LoginError.invalidCredentials
//    }
//    return "Login successful!"
//}
//
//Task {
//    do {
//        let result = try await login(email: "admin", password: "jpt")
//        print(result)
//    } catch {
//        print(error)
//    }
//}



//A function can take another function as one of its arguments. -> higher order function
//exammple 1
func add(a: Int, b: Int) -> Int {
    return a+b
}
func subtract(a: Int, b: Int) -> Int {
    return a-b
}

func performOperation(a: Int, b: Int, operation: (Int, Int) -> Int) {
    let result = operation(a,b)
    print("result: \(result)")
}

//performOperation(a: 10, b: 20, operation: add)
//performOperation(a: 10, b: 20, operation: subtract)

//example 2
//Instead of defining separate functions, we can pass closures directly.
func executeOperation(a: Int, b: Int, operation: (Int, Int) -> Int) {
    let result = operation(a, b)
    print("Result:", result)
}

//executeOperation(a: 6, b: 2, operation: { $0 * $1 })
//executeOperation(a: 8, b: 4) { $0 / $1 }

//example 3
let numbers = [5, 3, 8, 1, 4]
func descendingOrder(a: Int, b: Int) -> Bool {
    return a > b
}

let sortedNumbers = numbers.sorted(by: descendingOrder)
print(sortedNumbers)



