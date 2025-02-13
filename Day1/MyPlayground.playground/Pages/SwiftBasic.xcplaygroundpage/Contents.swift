import Foundation

//function
func myExampleFunction(){
    print("first function execution!")
}

myExampleFunction()

//function with parameter
func myExampleFunction(name: String, roll: Int, age: Int){
    print("name: ",name)
    print("roll: ",roll)
    print("age: ",age)
}

//function call garda arguement pass garda kheri colon : use garnu parxa with parameter name
myExampleFunction(name:"janak",roll:123,age:20)
