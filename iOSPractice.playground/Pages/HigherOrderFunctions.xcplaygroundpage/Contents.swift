//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

let numbers = [1, 2, 3, 4, 5]
let doubled = numbers.map { $0 * 2 }
let strings = numbers.map { String($0) }
print(strings)

let wizards = ["Harry", "Hermione", "Ron"]
let uppercased = wizards.map { $0.uppercased() }

let maybeNumbers = strings.map { Int($0) }
print(maybeNumbers)

let definitelyNumbers = strings.compactMap { Int($0) }
print(definitelyNumbers)

let someValues = ["god", "evil", nil, "devil", "superman"]
let someValuesWithoutNil = someValues.compactMap({ $0 })
print(someValuesWithoutNil)

let arrayOfIntegers = [[1, 3, 5, nil], [2, nil, 6]]
let arrayOfStrings = arrayOfIntegers.flatMap { $0 }.compactMap { $0 }
print(arrayOfStrings)


//FILTER
let digits = [1,4,10,15]
let even = digits.filter { $0 % 2 == 0 }

//Reduce
let items = [2.0,4.0,5.0,7.0]
let total = items.reduce(10.0, +)
print(total)

let codes = ["abc","def","ghi"]
let text = codes.reduce("", +)
print(text)

let names = ["alan","brian","charlie"]
let csv = names.reduce("===") {text, name in "\(text),\(name)"}
print(csv)

//: [Next](@next)
