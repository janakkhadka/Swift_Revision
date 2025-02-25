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
var abc: [String] = ["a","b","c","d"] //array with literals
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
    //print("\(index+1): \(letter)")
}



//set
//A set stores distinct values of the same type in a collection with no defined ordering. You can use a set instead of an array when the order of items isn’t important, or when you need to ensure that an item only appears once.

var firstSet: Set<String> = ["a","b","c","d"] //set with literals
//print(firstSet)
//print(firstSet.count)

//insert new item
firstSet.insert("e")
//print(firstSet)
firstSet.insert("f")
//print(firstSet)
firstSet.insert("h")
//print(firstSet)

//print(firstSet.sorted()) //.sorted() le tei line or block maa matra sort gardinxa, but not actually

for set in firstSet{
    //print(set)
}

//performing set operation like intersection, union

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]


//print(oddDigits.union(evenDigits).sorted())
//print(oddDigits.intersection(evenDigits).sorted())
//print(oddDigits.subtracting(singleDigitPrimeNumbers).sorted())
//print(oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted())


//dictionaries, yesma ni order matter gardaina
var firstDic: [Int: String] = [:] //empty dictionary

firstDic[1] = "janak"  // 1 key ho int typeko, janak value ho string typeko
//print(firstDic)

firstDic = [:] //making again empty

var secondDic: [String: String] = ["name":"janak","age":"23"] //creating dictionary with literals
//print(secondDic)


secondDic["name"] = "ronaldo" //name vanne key ko value change gareko
//print(secondDic)

if let oldName = secondDic.updateValue( "janak", forKey: "name"){ //old value vetera update vayo ki nai vanera check garne sahit lai yo use garne
    //print("the old name is \(oldName)")
}

if let removeAge = secondDic.removeValue(forKey: "age"){
    //print("age removed is \(removeAge)")
}else {
    print("not removed")
}

//iterating over dictinary
for (key, value) in secondDic {
    print("\(key): \(value)")
}

