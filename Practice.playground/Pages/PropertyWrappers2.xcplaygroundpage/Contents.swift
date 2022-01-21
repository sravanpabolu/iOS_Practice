//: [Previous](@previous)

import Foundation

var greeting = "An example of Property Wrapper"

//extension Mirror {
//    static func isOptionalAndNil<Value>(_ instance: Value) -> Bool {
//        let mirror = Mirror(reflecting: instance)
//        return mirror.displayStyle == .optional && mirror.children.first?.value == nil
//    }
//}

//extension UserDefaults {
//    func containsKey(_ key: String) -> Bool {
//        self.object(forKey: key) != nil
//    }
//}

@propertyWrapper struct UserDefault<Value> {
    let key: String
    let defaultValue: Value
    let container: UserDefaults = .standard
    
    var wrappedValue: Value {
        get {
            return container.object(forKey: key) as? Value ?? defaultValue
        } set {
            
            // if the type is optional and it is nil
//            if Mirror.isOptionalAndNil(newValue) {
//                if container.containsKey(key) {
//                    container.removeObject(forKey: key)
//                }
//            }
            
            container.set(newValue, forKey: key)
        }
    }
}

struct Settings {
    @UserDefault(key: "isDarkMode", defaultValue: false)
    var isDarkMode: Bool
//    var isDarkMode: Bool?
}

var settings = Settings()
settings.isDarkMode = true
print(settings.isDarkMode)

//settings.isDarkMode = nil


//: [Next](@next)
