//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

func getSecondLargest(in array: [Int]) -> Int {
    guard array.count > 2 else { return 0 }
    
    var first = array.first ?? 0
    var second = first
    
    for aNumber in array {
        if aNumber > first {
            second = first
            first = aNumber
        }
        
        if aNumber > first, aNumber < second {
            second = aNumber
        }
    }
    
    if second == first {
        return 0
    }
    
    return second
}

var arr = [12, 35, 1, 10, 34, 1]
arr = [10, 10, 10]
arr.sort()
//print(arr[arr.count-2])
print(getSecondLargest(in: arr))


//: [Next](@next)
