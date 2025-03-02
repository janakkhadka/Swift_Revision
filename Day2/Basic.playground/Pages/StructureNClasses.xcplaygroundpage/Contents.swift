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
//print("\(person.address)")

person.address = Address(city: "Kaushaltar", district: "Bhaktapur", province: "Bagmati Province", country: "Nepal") //assign new values
//print("\(person.address)")


//structure memberwise initializer
let address = Address(city: "Sallahghari", district: "Bhaktapur", province: "Bagmati Province", country: "Nepal") //yo chai structure maa matrai milxa class maa mildaina
//print("\(address)")


var tempAdd = address
tempAdd.city = "Balkumari"
//print(tempAdd)

//classes are reference type, documentaiton maa herda bujinxa
let person1 = Person()
person1.address = tempAdd
person1.name = "Garima Khulal"
person1.salary = 40000.00
print(person1.salary)

let person2 = person1
person2.salary = 25000.00
print(person1.salary) //25000.00 nai aauxa reference type vayeko le
print(person2.salary)

