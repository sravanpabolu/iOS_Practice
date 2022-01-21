    //: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

var arr = [23, 2, 5, 9, 98, 56]
var highest = 0
for item in arr {
    if highest < item {
        highest = item
    }
}
print(highest)

//: [Next](@next)
