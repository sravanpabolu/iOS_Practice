//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

extension Array where Element == Int {
    func evenNumbers() -> [Int] {
        print("Even numbers")
        return self.filter({ $0 % 2 == 0 })
    }
}

let numbers: Array = [1, 2, 3, 4, 5, 6]
let evenNumbers = numbers.evenNumbers()
print(evenNumbers)

//: [Next](@next)
