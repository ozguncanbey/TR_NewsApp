//
//  NetworkManager.swift
//  TR_NewsApp
//
//  Created by Özgün Can Beydili on 18.08.2023.
//

import Foundation

final class NetworkManager {
    static let shared = NetworkManager()
    private init() {}
    
    func download(url: URL, completion: @escaping (Result<Data,downloadError>) -> ()) {
        URLSession.shared.dataTask(with: url) { data, response, error in

            if let error = error {
                print(error.localizedDescription)
                completion(.failure(.error))
                return
            }

            guard let response = response as? HTTPURLResponse,
                  response.statusCode == 200 else {
                completion(.failure(.responseError))
                return
            }
            
            guard let data = data else {
                completion(.failure(.dataError))
                return
            }
            
            completion(.success(data))
        }.resume()
    }
}

enum downloadError: Error {
    case error
    case responseError
    case dataError
}
