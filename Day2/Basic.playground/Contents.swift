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
//print(total)



//fucntions and closures
func greet(_ person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
//print(greet("Bob", day: "Tuesday"))

func calculateMath(scores: [Int]) -> (min: Int, max: Int, sum: Int){
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        }else if score < min {
            min = score
        }
        sum += score
    }
    return (min, max, sum)
}

let mathCalulation = calculateMath(scores: [1,2,7,5,4,7,8,12,34,3,8])
//print(mathCalulation)
//print(mathCalulation.2)
//print(mathCalulation.sum)

//nested function
func outerFunction() -> Int {
    var a = 5
    func innerFunction(){
        a += 10
    }
    innerFunction()
    return a
}
//print(outerFunction())


// function can return another function
func outerFunction1() -> Int {
    var a = 5
    func innerFunction() -> Int{
        a += 10
        return a
    }
    return innerFunction()
}
//print(outerFunction1())



//passing function as one of its arguments
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {  //list array ho and conditions function ho, conditions le int linxa ra bool return garxa
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
//print(hasAnyMatches(list: numbers, condition: lessThanTen))

numbers.map({ (number: Int) -> Int in
    let result = number * 2
    return result
})

//map le list ma vako data lai need anusar operation garera naya list banauna help garxa
let mappedNumbers = numbers.map({ number in 3 * number })
//print(mappedNumbers)

let sortedNumbers = numbers.sorted { $0 < $1 }  //closure ho, closure vanya anonymous function ho
//If $0 is greater than $1, it keeps $0 before $1.
//print(sortedNumbers)


//class and objects
class Shape {
    var numberOfSides: Int = 0
    
    func simpleDescription() -> String {
        return "no of sides = \(numberOfSides) of shape"
    }
}

var shape = Shape()  //object creation of class Shape
//print(shape.simpleDescription())
shape.numberOfSides = 5
//print(shape.simpleDescription())

//constuctor in swift
class Shape1 {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "no of sides = \(numberOfSides) of shape"
    }
}

class Square: Shape1 {
    var sideLength: Double


    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)  //superclass maa name ko default value xaina so super.init garera initialize gareko yaa bata
        numberOfSides = 4 //just numberOfSides ko value modify gareko ho
    }


    func area() -> Double {
        return sideLength * sideLength
    }


    override func simpleDescription() -> String {
        return "\(name) sides of length \(sideLength)."
    }
}
let test = Square(sideLength: 5.2, name: "my test square")
//print(test.area())
//print(test.simpleDescription())


//getter amd setter
class EquilateralTriangle: Shape1 {
    var sideLength: Double = 0.0


    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }


    var perimeter: Double {
        get {
             return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }


    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}
var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter) //traomg;e.perimeter garda get block run hunxa mathi
triangle.perimeter = 9.9 //yo garda set block run hunxa
print(triangle.sideLength)




//enumerations
//defines a group of related values in a type-safe way. It helps to work with a fixed set of options, making code more readable and less error-prone.


















