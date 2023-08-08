//
//  NetworkManager.swift
//  AngelsSplit
//
//  Created by Angel Martinez on 2/9/23.
//

import Foundation

final class NetworkManager {
    
    static let shared = NetworkManager()
    
    static let baseURL = "https://raw.githubusercontent.com/Angel39706/AngelsSplit/main/"
    private let splitURL = baseURL + "routine.json"
    
    private init() {}
    
    
    func getSplit(completed: @escaping (Result<[Split], ASError>) -> Void) {
        guard let url = URL(string: splitURL) else {
            completed(.failure(.invalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(SplitResponse.self, from: data)
                completed(.success(decodedResponse.request))
            } catch {
                completed(.failure(.invalidData))
            }
        }
        task.resume()
    }
}
