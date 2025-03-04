//: [Previous](@previous)

import Foundation

//argument labeling
func greet(to name: String, with greeting: String) -> String {
    return "\(greeting), \(name)!"
}

//print(greet(to: "janak", with: "Good Morning"))

//omiting argument label
func greet2(_ name: String, _ greeting: String) -> String {
    return "\(greeting), \(name)!"
}
//print(greet2("janak", "good evening"))


//variadic paramters: jati ota ni parameter pass garna milne
func sum(_ numbers: Int...) -> Int {
    return numbers.reduce(0, +)  //reduce is a higher order function, it reduces numbers(array) to a single value; 0 is initial sum and + will add each array elements turn by turn
}
//print(sum(1,2,3,4,5))

//inout paramters
func increment(_ number: inout Int) {  //inout makes a variable like pass by reference
    number += 1
}
var x = 10
increment(&x)
//print(x)

//function types
func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}
func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}
//The type of both of these functions is (Int, Int) -> Int. This can be read as:

//“A function that has two parameters, both of type Int, and that returns a value of type Int.”



