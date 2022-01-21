//: [Previous](@previous)

import Foundation
import UIKit

enum NetworkErrors: Error {
    case urlError
    case dataError
    case parseError
}

struct Constants {
    static let url = "https://jsonplaceholder.typicode.com/posts"
}

protocol NetworkProtocol {
    func getPosts(completion: @escaping (Result<Data, NetworkErrors>) -> Void)
}

struct Post: Codable {
    var id, userId: Int?
    var title, body: String?
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case userId = "userId"
        case title = "title"
        case body = "body"
    }
}

class PostsViewModel {
    private var service: NetworkProtocol
    
    init(service: NetworkProtocol = NetworkManager()) {
        self.service = service
    }
}

extension PostsViewModel {
    func getPosts() {
        service.getPosts(completion: { response in
            switch response {
            case .success(let data):
                print("Received Data - \(data)")
                
                let aDecoder = JSONDecoder()
                if let posts = try? aDecoder.decode([Post].self, from: data) {
                    print("Posts: \(posts)")
                } else {
                    print("Parse Error")
                }
                
            case .failure(let error):
                print("Error: \(error.localizedDescription)")
            }
        })
    }
}

class LocalManager: NetworkProtocol {
    func getPosts(completion: @escaping (Result<Data, NetworkErrors>) -> Void) {
        print("Posts from local")
    }
}

class NetworkManager: NetworkProtocol {
    func getPosts(completion: @escaping (Result<Data, NetworkErrors>) -> Void) {
        print("Posts from Network")
        guard let url = URL(string: Constants.url) else {
            completion(.failure(.urlError))
            return
        }
        
        let session = URLSession.shared.dataTask(with: url) { data, response, error in
            if error != nil {
                completion(.failure(.dataError))
            }
            
            guard let response = response as? HTTPURLResponse, 200..<300 ~= response.statusCode else {
                completion(.failure(.dataError))
                return
            }
            
            guard let data = data else {
                completion(.failure(.dataError))
                return
            }
            
            completion(.success(data))
        }
        session.resume()
    }
}

//class ViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//
//        PostsViewModel(service: NetworkManager()).getPosts()
//        PostsViewModel(service: LocalManager()).getPosts()
//    }
//}

PostsViewModel(service: NetworkManager()).getPosts()
PostsViewModel(service: LocalManager()).getPosts()






//: [Next](@next)
