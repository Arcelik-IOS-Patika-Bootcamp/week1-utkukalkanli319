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

// PART 2-CLASS
// additional to struct, classes offer inheritance

class Plane {
  var color: String

  init(color:String) {
    self.color = color
  }
}

var plane1 = Plane(color: "Blue")

var plane2 = plane1

plane1.color = "Red"
print(plane2.color)  // prints Red

// object of Plane with custom initializer
var plane3 = Plane(color: "Gradient Gray")

print("Plane color: \(plane3.color)")
