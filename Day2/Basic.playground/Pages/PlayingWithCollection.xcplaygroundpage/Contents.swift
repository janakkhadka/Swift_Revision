//: [Previous](@previous)

import Foundation

//array with default value
var firstArray = Array(repeating: 1, count: 5)
print(firstArray)

var secondArray = Array(repeating: "a", count: 5)
print(secondArray)

//var finalArray = firstArray + secondArray // can't do this cause first is of Int type and second is of string type

var finalArray = firstArray + [1,2,3,4,5]
print(finalArray)


