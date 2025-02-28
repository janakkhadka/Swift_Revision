//: [Previous](@previous)

import Foundation


//closures
var names = ["janak", "bishal", "kishor", "subash", "dhrub", "sujan", "dipesh", "kailash"]
var sortedNames = names.sorted(by: { s1, s2 in
    s1 < s2
})

var sortedNamesOperatorMethod = names.sorted(by: <)  //xoto tarika ho
//print(sortedNames)

func makeIncrementer(incrementAmount: Int) -> () -> Int {
    var total = 0
    let incrementer: () -> Int = {
        total += incrementAmount
        return total
    }
    return incrementer
}

let incrementByTwo = makeIncrementer(incrementAmount: 2)
//print(incrementByTwo()) //2 aauxa
//print(incrementByTwo()) //4 aauxa



func performOperation(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a, b)
}

let result = performOperation(a: 5, b: 3) { $0 + $1 }
//print(result) //8


