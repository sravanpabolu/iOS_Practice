import UIKit

//var str = "Hello, playground"
var str = "abcdefg"

func duplicates(string: String) -> Bool {
    for c in string {
        if (string.firstIndex(of: c) != string.lastIndex(of: c)) {
            return true
        }
    }
    return false
}

print("\(duplicates(string: str))")

