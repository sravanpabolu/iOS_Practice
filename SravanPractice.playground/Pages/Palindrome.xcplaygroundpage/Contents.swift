//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

func palindrome<T: StringProtocol>(_ input: T) -> Bool {
    let reversedT = input.reversed()
    return input.elementsEqual(reversedT)
}

print(palindrome(greeting))
print(palindrome("121"))

//: [Next](@next)
