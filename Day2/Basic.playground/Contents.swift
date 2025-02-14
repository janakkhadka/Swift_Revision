import Foundation


//more insights on variables hai swift maa
let implicitInteger = 70
let implicitDouble = 70.01
let explicitDouble: Double = 70
let abc: Bool = true

//concatenation
let scale = "length of scale is "
let length = 15
let cm = " cm"
let widthLabel = scale + String(length) + cm

let apple = 3
let banana = 7
let totalFruits = apple + banana
let appleSummary = "I have \(apple) in my bag."
let fruitSummary = "I have \(totalFruits) in my bag."

//array in swift
var fruits = ["apple", "banana", "mango", "orange"]
fruits[1] = "pineapple"  //index 1 ko value replace garera banana rakheko ho
//print(fruits)
fruits.append("papaya")//array ma data add gareko
//print(fruits)
fruits = [] //empty array


//dictnories
var studentDetails: [String: Any] = [  //dictionary le by default one type ko mai data accept garxa, to support both string and int, we provide String: Any to dictionary type
    "name": "janak khadka",
    "age": 23,
    "address": "kathmandu"
]
//print(studentDetails)
studentDetails["roll"] = 17
//print(studentDetails)
studentDetails = [:] //empty dictionary



//control flow
let oddNumbers = [1,3,5,7,9,11,13,15,17,19]
var sum: Int = 0
for number in oddNumbers {
    if(number>10){
        sum += number
    }
}
//print(sum)

let jobs = ["developer", "teacher", "pilot", "designer", "doctor"]
for job in jobs {
   // print(job)
}


//optionals in swift
// yesle vaneko chai either contains a value or nil to indicate that value is missing
let optionalName: String? = "janak"
//print( optionalName == nil)
var greeting = "Good evening"
if let name = optionalName {
    greeting = "Good evening, \(optionalName ?? "kalu")"  //if optional value not availabe then kalu is dipslayed
    //print(greeting)
}

let optionalAge: Int? = nil
let age: Int = 23
let ageShow: String = "age: \(optionalAge ?? age)"
//print(ageShow)


//switch case
//let address = "kathmandu nepal"
//switch address {
//case "beijing china":
//    //print("we cant delivery goods there")
//case let x where x.hasSuffix("nepal"):  // x maa address ko value basxa ni hasSuffix le chai nepal xaki nai vnera check garxa
//    //print("we can deliver in \(x)")
//default:
//    print("provide a location where we can deliver")
//
//}




//iteration further
let numbersList = [
    "odd number": [1,3,5,7,9,11,13,15,17,19],
    "even number": [2,4,6,8,10,12,14,16,18,20],
    "prime number": [2,3,5,7,11,13,17,19],
]

var largest = 0
for (_, numbers) in numbersList {
    for number in numbers{
        if(number>largest){
            largest = number
        }
    }
}
//print(largest)


//while
var n = 2
while n <= 20 {
    n *= 2
    //print(n)
}

//repeat
//repeat is like do while loop in other, if condition is false then it will execute block at least once
var m = 2
repeat {
    m *= 2
    //print(m)
}while m < 0


//for -> range in for
var total = 0
for i in 0..<4 {
    total += i
}
print(total)



//fucntions and closures











