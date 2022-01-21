//: [Previous](@previous)

import Foundation

enum LondonAirports: String {
    case heathrow = "LHR"
    case gatwick = "GTK"
}

enum Airports {
    case chennai
    case london(airport: LondonAirports)
    
    func getAirportCode(airport: Airports) -> String {
        switch self {
        case .chennai :
            return "MAA"
        case .london(let someAirport):
            return someAirport.rawValue
//        default:
//            return "London Airports"
        }
    }
}

let anIndianAirport: Airports = .chennai
print(anIndianAirport)

let aLondonAirport: LondonAirports = .heathrow
print(aLondonAirport.rawValue)

let anotherLondonAirport: Airports = .london(airport: .gatwick)
print(anotherLondonAirport)

print(anIndianAirport.getAirportCode(airport: .chennai))
print(anotherLondonAirport.getAirportCode(airport: .london(airport: .gatwick)))

//: [Next](@next)
