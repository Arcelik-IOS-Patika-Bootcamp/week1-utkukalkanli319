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

// PART 3 - ENUM

enum Season {
  case spring, summer, autumn, winter
}

enum Days {
  case monday, tuesday, wednesday, thursday, friday, saturday, sunday
}


var currentday = Days.monday

print(currentday)

// ITERATING OVER ENUMS
// conform Languages to caseIterable
enum Sizes: CaseIterable {
  case small, medium, large
}
// for loop to iterate over all cases
for currentSize in Sizes.allCases {
  print(currentSize)
}

enum Age : Int {
  case young = 10
  case medium = 12
  case old = 14
}

// access raw value of python case
var result = Age.young.rawValue
print(result)

// PART 4- IF GUARD
// GUARD
func isBiggerThanZero(x: Int) {
    guard x > 0 else {
        print("\(x) , Less than zero")
        return
    }
    print("\(x) , Greater than zero")
}
isBiggerThanZero(x: -1)



func getMeaningOfLife() -> Int? {
    42
}

// IF LET
func printMeaningOfLifeIf() {
    if let name = getMeaningOfLife() {
        print(name)
    }
}

func printMeaningOfLifeGuard() {
    guard let name = getMeaningOfLife() else {
        return
    }
    print(name)
}

// PART 5 - OPTIONALS
var myString:String? = nil

if myString != nil {
   print(myString!)  // Forced Unwrapping, we put ! at the end of the optional values
} else {
   print("myString has nil value")
}

var secondString:String? = "UTKU"

if secondString != nil {
   print(secondString!) // Forced Unwrapping, we put ! at the end of the optional values
} else {
   print("Secondstring has nil value")
}
// AUTOMATIC UNWRAPPING
// usage of ! instead of ?, also no need for forced unwrapping
var thirdString:String!
thirdString = "Hello, Swift 4!"

if thirdString != nil {
   print(thirdString)
} else {
   print("thirdString has nil value")
}
