//: [Previous](@previous)

import Foundation

//structure definition
struct Address {
    var city = "Dhankuta"
    var district = "Dhankuta"
    var province = "Koshi Province"
    var country = "Nepal"
}

//class definition
class Person {
    var address = Address() //structure instances
    var name = "Janak Khadka"
    var salary = 500000.00
}

var person = Person()
print("\(person.address)")
