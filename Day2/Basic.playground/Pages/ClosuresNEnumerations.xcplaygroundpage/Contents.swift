//: [Previous](@previous)

import Foundation


//closures
var names = ["janak", "bishal", "kishor", "subash", "dhrub", "sujan", "dipesh", "kailash"]
var sortedNames = names.sorted(by: { s1, s2 in
    s1 < s2
})

var sortedNamesOperatorMethod = names.sorted(by: <)  //xoto tarika ho
//print(sortedNames)

func makeIncrementer(incrementAmount: Int) -> () -> Int {
    var total = 0
    let incrementer: () -> Int = {
        total += incrementAmount
        return total
    }
    return incrementer
}

let incrementByTwo = makeIncrementer(incrementAmount: 2)
//print(incrementByTwo()) //2 aauxa
//print(incrementByTwo()) //4 aauxa



func performOperation(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a, b)
}

let result = performOperation(a: 5, b: 3) { $0 + $1 }
//print(result) //8



//enumeration
enum CompassPoint {
    case north
    case south
    case west
    case east
}

var directionHead = CompassPoint.east
directionHead = .south

//switch directionHead {
//    case .north:
//        print("heading towards north")
//    case .south:
//        //print( "heading towards south")
//    case .east:
//        print("heading towards east")
//    case .west:
//        print("heading towards west")
//}

enum Beverage: CaseIterable {
    case coffee, tea, juice
}
let numberOfChoices = Beverage.allCases.count
print("\(numberOfChoices) beverages available")

for beverage in Beverage.allCases {
    print(beverage)
}





