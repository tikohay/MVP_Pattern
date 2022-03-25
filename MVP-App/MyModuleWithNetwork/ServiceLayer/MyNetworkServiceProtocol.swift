//
//  NetworkServiceProtocol.swift
//  MVP-App
//
//  Created by Karakhanyan Tigran on 25.03.2022.
//

import Foundation

protocol MyNetworkServiceProtocol {
    func getUsers(completion: @escaping (Result<[MyUsers], Error>) -> Void)
}

class MyNetworkService: MyNetworkServiceProtocol {
    func getUsers(completion: @escaping (Result<[MyUsers], Error>) -> Void) {
        let stringUrl = "https://jsonplaceholder.typicode.com/users"
        guard let url = URL(string: stringUrl) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
            }
            
            do {
                let obj = try JSONDecoder().decode([MyUsers].self, from: data!)
                completion(.success(obj))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
}
