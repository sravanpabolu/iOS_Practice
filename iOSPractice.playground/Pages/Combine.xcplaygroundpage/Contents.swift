//: [Previous](@previous)

import Foundation
import Combine

var greeting = "Combine Demo"
print(greeting)

enum Constants {
    static let url = "https://simplifiedcoding.net/demos/marvel/"
}

enum CustomError: Error {
    case invalidURL
    case invalidServerResponse
}

struct MarvelHero: Codable {
    let name, realname, team, firstappearance: String
    let createdby, publisher: String
    let imageurl: String
    let bio: String
}

typealias MarvelHeros = [MarvelHero]

class NetworkManager {
    func getData<T>() -> Future<T, Error> {
        return Future<T, Error> { _ in
            guard let url = Constants.url else { return CustomError.invalidURL }
            
            URLSession
                .shared
                .dataTaskPublisher(for: url)
                .tryMap() { element -> Data in
                    guard let response = element.response as? HTTPURLResponse, response.statusCode == 200 else {
                        return CustomError.invalidServerResponse
                    }
                    return element.data
                }
        }
        .decode(type: MarvelHeros.self, decoder: JSONDecoder())
        .sink(receiveCompletion: {
            print("Received Completion : \($0)")
        }, receiveValue: { hero in
            print(hero)
        })
    }
}

//NetworkManager().getData


//: [Next](@next)
