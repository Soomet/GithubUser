//
//  UserManager.swift
//  GithubUser
//
//  Created by Sumit Joshi on 2019/11/05.
//  Copyright © 2019 Sumit Joshi. All rights reserved.
//

import Foundation

struct UserManager {
    let userSearchUrl = "https://api.github.com/search/users?q="
    
    func fetchUser(userName: String) {
        let urlString = "\(userSearchUrl)\(userName)"
        print(urlString)
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String) {
        
        if let url = URL(string: urlString) {
            
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print(error!)
                    return
                }
                
                if let safeData = data {
                    self.parseJSON(userData: safeData)
                }
            }
            
            task.resume()
            
        }
    }
    
    func parseJSON(userData: Data) {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(UserData.self, from: userData)
            print(decodedData.items[0].login)
        } catch {
            print(error)
        }
        
    }
}
