//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

struct Person: Comparable {
    var name: String

    static func <(lhs: Person, rhs: Person) -> Bool {
        return lhs.name < rhs.name
    }
}

let taylor = Person(name: "Taylor Swift")
let justin = Person(name: "Justin Bieber")
print(taylor < justin)

//: [Next](@next)
