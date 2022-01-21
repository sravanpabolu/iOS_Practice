//: [Previous](@previous)

import Foundation

var greeting = "Missing Number in an Array"
print(greeting)


func getMissingNumber(_ arr: [Int]) -> Int {
    let count = arr.count
    var total = ((count + 1) * (count + 2))/2
    
    arr.forEach { element in
        total -= element
    }
    return total
}

let numbers = [1, 2, 3, 4, 5, 6, 8, 9]
let missingNumber = getMissingNumber(numbers)
print(missingNumber)



//: [Next](@next)
