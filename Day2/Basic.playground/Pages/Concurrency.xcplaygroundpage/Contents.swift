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

