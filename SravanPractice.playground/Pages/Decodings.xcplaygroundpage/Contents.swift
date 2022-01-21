//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

func countDecodings(for arr: [Int]) -> Int {
    
    guard arr[0] != 0 else { return 0 }
    
    var count0 = 1, count1 = 1
    
    for i in 2...arr.count {
        var dig1 = 0, dig2 = 0, dig3 = 0
        
        if arr[i-1] != 0 {
            dig1 = 1
        }
        if arr[i-2] == 1 {
            dig2 = 1
        } else {
            dig2 = 0
        }
        
        if arr[i-2] == 2, arr[i-1] < 7 {
            dig3 = 1 ;
        }
        
        let count2 = (dig1 * count1) + dig2 + (dig3 * count0)
        count0 = count1
        count1 = count2
    }
    
    return count1
}

var array = [ 1, 2, 3, 4 ]

let numStr = "1234"
array = numStr.compactMap{ Int(String($0)) ?? 0 }

debugPrint(countDecodings(for: array))

//: [Next](@next)
