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
print(greet2("janak", "good evening"))
