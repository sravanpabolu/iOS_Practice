//: [Previous](@previous)

import Foundation
var greeting = "All missing numbers in an array"

func getMissingNumbers(_ arr: [Int]) -> [Int] {
    var missingNumbers = [Int]()
    let sortedArr = arr.sorted()
    
    let first = sortedArr.first ?? 0
    let last = sortedArr.last ?? sortedArr[sortedArr.count - 1]
    
    var count = 0
    
    for index in first...last {
        if (index == sortedArr[count]) {
            count = count + 1
        } else {
            missingNumbers.append(index)
        }
    }
    
    return missingNumbers
}

print(greeting)

let numbers = [1, 4, 5, 6, 9]
print(getMissingNumbers(numbers))

//: [Next](@next)
