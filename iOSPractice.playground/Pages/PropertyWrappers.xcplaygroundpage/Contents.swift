//: [Previous](@previous)

import Foundation

var greeting = "Property Wrappers"

///

@propertyWrapper struct Upper {
    var wrappedValue: String {
        didSet {
            wrappedValue = wrappedValue.uppercased()
        }
    }
    
    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue.uppercased()
    }
}

struct Customer {
    @Upper var customerCode: String
    
    init(customerCode: String) {
        self.customerCode = customerCode
    }
}

var customer = Customer(customerCode: "abc123")
print(customer.customerCode)

customer = Customer(customerCode: "xyz")
print(customer.customerCode)



//: [Next](@next)
