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
    }
}
