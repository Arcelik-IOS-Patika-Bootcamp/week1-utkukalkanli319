import UIKit

var greeting = "Week 1 Assignment"

// PART 1-STRUCT
// this is how we define a struct in swift
struct Person {

  var name = " "
  var age = 0
  func sayMyName(){
      print("My name is \(name)")
  }
}

// create instance of struct
var person1 = Person()
print(person1)

// now lets change the properties of that instance
person1.name = "swifty"
person1.age = 34
print(person1)
// call struct function
person1.sayMyName()



