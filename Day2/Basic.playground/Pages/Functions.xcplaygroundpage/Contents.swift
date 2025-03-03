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

