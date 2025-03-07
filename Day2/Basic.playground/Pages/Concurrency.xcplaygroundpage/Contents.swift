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
enum LoginError: Error {
    case invalidCredentials
}

func login(email: String, password: String) async throws -> String {
    if email != "admin" || password != "admin" {
        throw LoginError.invalidCredentials
    }
    return "Login successful!"
}

Task {
    do {
        let result = try await login(email: "admin", password: "jpt")
        print(result)
    } catch {
        print(error)
    }
}

