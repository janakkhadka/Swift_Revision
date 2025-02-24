//: [Previous](@previous)

import Foundation

//array with default value
var firstArray = Array(repeating: 1, count: 5)
//print(firstArray)

var secondArray = Array(repeating: "a", count: 5)
//print(secondArray)

//var finalArray = firstArray + secondArray // can't do this cause first is of Int type and second is of string type

var finalArray = firstArray + [1,2,3,4,5]
//print(finalArray)

//appending/deleting values
var abc: [String] = ["a","b","c","d"]
abc.append("e")
//print(abc)
abc.insert("f", at: 1)
//print(abc)
abc.remove(at: 1)
//print(abc)

for letter in abc {
    //print("\(letter)")
}

for (index, letter) in abc.enumerated() {
    print("\(index+1): \(letter)")
}


