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

person.address = Address(city: "Kaushaltar", district: "Bhaktapur", province: "Bagmati Province", country: "Nepal") //assign new values
print("\(person.address)")


//structure memberwise initializer
let address = Address(city: "Sallahghari", district: "Bhaktapur", province: "Bagmati Province", country: "Nepal") //yo chai structure maa matrai milxa class maa mildaina
print("\(address)")


