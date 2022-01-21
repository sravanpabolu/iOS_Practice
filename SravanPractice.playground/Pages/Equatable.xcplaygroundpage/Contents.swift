//: [Previous](@previous)

import Foundation

var greeting = "Equatable"
print(greeting)

var string1 = "Hello"
var string2 = "Hello"

if string1 == string2 {
    print("Both strings are equal")
} else {
    print("Both strings are NOT equal")
}

/// Example 2
///
struct Person: Equatable {
    let name: String
}

struct Car: Equatable {
    let make: String
    let model: String
    let owner: Person
    
    /// This function is not required, if Person is confirming to Equatable
//    static func == (lhs: Car, rhs: Car) -> Bool {
//        return lhs.make == rhs.make && lhs.model == rhs.model && lhs.owner.name == rhs.owner.name
//    }
}

let bmw = Car(make: "bmw", model: "5 series", owner: Person(name: "Joe"))
//let benz = Car(make: "M-benz", model: "E Class")
let bmw5 = Car(make: "bmw", model: "5 series", owner: Person(name: "John"))

if bmw == bmw5 {
    print("Both cars are equal")
} else {
    print("Both cars are NOT equal")
}


//: [Next](@next)
