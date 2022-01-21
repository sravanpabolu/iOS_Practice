//: [Previous](@previous)

import Foundation

var greeting = "Hashable"
print(greeting)

struct Person {
    let name: String
}

struct UserAccount: Hashable {
    let accountIdentifier: Person
    
    static func == (lhs: UserAccount, rhs: UserAccount) -> Bool {
        return lhs.accountIdentifier.name == rhs.accountIdentifier.name
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(accountIdentifier.name)
    }
}

struct Post {
    let text: String
}

var dictionary = [
    UserAccount(accountIdentifier: Person(name: "a")): [Post(text: "First")],
    UserAccount(accountIdentifier: Person(name: "b")): [Post(text: "First")]
]

if let posts = dictionary[UserAccount(accountIdentifier: Person(name: "b"))] {
    print(posts)
}



//: [Next](@next)
