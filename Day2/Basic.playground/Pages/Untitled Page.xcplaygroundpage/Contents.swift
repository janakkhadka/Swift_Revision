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
//print(triangle.perimeter) //traomg;e.perimeter garda get block run hunxa mathi
triangle.perimeter = 9.9 //yo garda set block run hunxa
//print(triangle.sideLength)




//enumerations
//defines a group of related values in a type-safe way. It helps to work with a fixed set of options, making code more readable and less error-prone.
enum Day {
    case sunday
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}

let today = Day.friday  //first way
let day: Day = .saturday  //second way

//switch today {
//case .sunday:
//    print( "Today is Sunday")
//case .saturday:
//    print("Today is Saturday")
//case .friday:
//    print("Today is Friday")
//default:
//    print("Today is neither Sunday nor Saturday")
//}

enum Rank: Int {
    case one = 5
    case two, three, four, five
    case abc
}

let level = Rank.abc
//print(level.rawValue)  //raw value maa chai one = 1 vayesi baki ko aafai 1 le badeko hunxa like indexing
//output 10

enum Planet: String {
    case earth = "Earth"
    case mars = "Mars"
}

//print(Planet.earth.rawValue) // Output: "Earth"


//enum with methods
enum TrafficLight {
    case red, yellow, green

    func description() -> String {
        switch self {
        case .red:
            return "Stop"
        case .yellow:
            return "Get Ready"
        case .green:
            return "Go"
        }
    }
}

let signal = TrafficLight.red
//print(signal.description()) // Output: "Stop"



//structure
struct Person {
    var name: String
    var age: Int
    
    mutating func celebrateBirthday() {
        age += 1
    }
}

var person1 = Person(name: "Janak", age: 23)
var person2 = person1  // Creates a copy

person2.age = 24
//print(person1.age)  // Output: 23
//print(person2.age)  // Output: 24 , separate copy ho


struct Counter {
    var value: Int
    
    mutating func increment(){  //In Swift, structures (struct) and enumerations (enum) are value types. This means that when you modify a property inside a method, you're actually modifying a copy of the struct, not the original instance.To allow modification of properties inside a method, Swift requires you to mark the method as mutating.
        value += 1
    }
}
var counter = Counter(value: 0)
counter.increment()
//print(counter.value)
counter.increment()
//print(counter.value)


//nested structure
//custom or user defined daata types used like address type using in user type
struct Address {
    var city: String
    var country: String
}

struct User {
    var name: String
    var address: Address
}

let home = Address(city: "Kathmandu", country: "Nepal")
let user = User(name: "Janak", address: home)

//print(user.address) // Output: Kathmandu


//concurrency in swift
func fetchUserData(from server: String) async -> Int {
    if server == "primary" {
        return 97
    }
    return 501
}

func fetchUsername(from server: String) async -> String {
    let userID = await fetchUserData(from: server)
    if userID == 501 {
        return "John Appleseed"
    }
    return "Guest"
}


//async and await with sleep
func fetchData() async -> String {
    sleep(2)  // Simulating network delay 2 seconds ko lagi
    return "Data received"
}

Task {//Use Task to call asynchronous functions from synchronous code, without waiting for them to return.
    let result = await fetchData()
    //print(result)  //2 second wait garera data received print garxa
}



//error handling with swift

//1. yo tarika chai function banaune throws garne ani call huda kheri error catch garxa try le ani catch le handle garne
enum NetworkError: Error {
    case noInternet
    case serverError
    case invalidResponse
}

func fetchData(from url: String) throws -> String {
    if url.isEmpty {
        throw NetworkError.invalidResponse
    }
    return "Data from \(url)"
}

do{
    let result = try fetchData(from: "")
    print(result)
}catch NetworkError.noInternet {
    print("No Intenet Connection")
}catch NetworkError.serverError {
    print("server error occurred")
}catch {
    print("Unexpected error: \(error).")
}

//2. simple way, error j ho dekhaidine
// tara suruko ra yo ustai nai ho farak xaina hai
do {
    let data = try fetchData(from: "www.google.com.np")
    print(data)
}catch {
    print("error fetching data: \(error)")
}



//generic in swift
// generic ko benefits haru
//Avoid Code Duplication – No need to write the same function for multiple types.
//Type Safety – Ensures type correctness at compile time.

//without generic
func swapInts(_ a: inout Int, _ b: inout Int) {  //inout keyword le chai aako value lai modify garna dinxa
    let temp = a
    a = b           // this is possible because of inout keyword
    b = temp
}

func swapStrings(_ a: inout String, _ b: inout String) {
    let temp = a
    a = b
    b = temp
}

//with generic
// `T` is a placeholder for any type
func swapValues<T>(_ a: inout T, _ b: inout T) {
    let temp = a
    a = b
    b = temp
}

var num1 = 10, num2 = 20
swapValues(&num1, &num2)

var str1 = "Hello", str2 = "World"
swapValues(&str1, &str2)

/*
 📌 Real-World Use Cases of generic

 ✅ Reusable Data Structures

     Linked lists, stacks, and queues can store any data type.

 ✅ Networking & API Responses

     Use generics to create flexible API response handlers.

 ✅ UI Components

     Create reusable UI elements that work with different data types.
 */



























