//: [Previous](@previous)

import Foundation


//closures
var names = ["janak", "bishal", "kishor", "subash", "dhrub", "sujan", "dipesh", "kailash"]
var sortedNames = names.sorted(by: { s1, s2 in
    s1 < s2
})

var sortedNamesOperatorMethod = names.sorted(by: <)  //xoto tarika ho
//print(sortedNames)




