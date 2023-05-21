import Cocoa
//import Foundation

//MARK: Day4
///Type annotation
var arr1 = [1,2,3]//array of int
var arr2 :[Double] = [1,2,3] //array literal are same but they are considerred as Double
//var emptyArr = [] //Error -> compiler cannot infer type

let name:String //not initialized -> Need annotation
//print(name)//Error -> name used before being initialized
name = "Raj"
print(name)

var anyValue:Any
anyValue = 10
print(anyValue)
anyValue = 20.3
print(anyValue)
//let myDouble:Double = anyValue //Error

//Enums
enum Department{
    case development
    case testing
    case management
}
let myDepartment = Department.management
print(myDepartment)

extension Department:CaseIterable{
    
}
for cas in Department.allCases{
    print(cas)
}
print(Department.allCases) // Gives all enumeration cases

//Enums with associated values
enum Item {
    case integer(Int)
    case text(String)
    case floatingPoint(Double)
    case boolean(Bool)
}

let age: Item = .integer(30)
let message: Item = .text("Hello, world!")
let pi: Item = .floatingPoint(3.14159)
let isAvailable: Item = .boolean(true)

switch age {
case .integer(let value):
    print(" \(value)")
case .text(let value):
    print(" \(value)")
case .floatingPoint(let value):
    print("\(value)")
case .boolean(let value):
    print("\(value)")
}

//Raw value -> predefined value of specific type

enum Planet: String {
    case mercury = "Mercury"
    case venus = "Venus"
    case earth = "Earth"
    case mars = "Mars"
    case jupiter = "Jupiter"
    case saturn = "Saturn"
    case uranus = "Uranus"
    case neptune = "Neptune"
}
let myPlanet: Planet = .earth
print(myPlanet.rawValue)  // Output: "Earth"

// implicit raw values
enum Number: Int {
    case zero
    case one
    case two
    case three
}

print(Number.zero.rawValue)  // Output: 0
print(Number.one.rawValue)   // Output: 1
print(Number.two.rawValue)   // Output: 2
print(Number.three.rawValue) // Output: 3

//Initializing from raw value
let two = Number(rawValue: 2)


//challenge
let names = ["raj","sachin","rohit","surya","raj"]
print(name.count)

let namesSet = Set(names)
print(namesSet)
