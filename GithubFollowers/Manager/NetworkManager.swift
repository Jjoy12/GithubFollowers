//
//  NetworkManager.swift
//  GithubFollowers
//
//  Created by Jerrion Joy on 12/29/20.
//

import Foundation

class NetworkManager {
    
//MARK: Creates Singleton
    static let shared = NetworkManager()
    let baseURL = "https://api.github.com/users/"
    
    private init() {}
    
//MARK: Get followers function
    func getfollowers(for username: String, page: Int, completed: @escaping ([Follower]?, String?) -> Void) {
        let endpoint = baseURL +  "\(username)/followers?per_page=100&page=\(page)"
        
        guard let url = URL(string: endpoint) else {
            completed(nil,"This username created an invalid request please try again")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) {data, response, error in
            if let _ = error {
               completed(nil,"Unable to complete your request please check your internet connection")
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(nil,"Invalid response from the server please try again")
                return
            }
            
            guard let data = data else {
                completed(nil,"The data receieved from the server was invalid Please try again")
                return
            }
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let followers = try decoder.decode([Follower].self, from: data)
                completed(followers,nil)
            }catch {
                completed(nil,"The data receieved from the server was invalid Please try again")
                
            }
            
        }
        task.resume()
        
        
        
    }
    
}
