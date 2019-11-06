//
//  UserData.swift
//  GithubUser
//
//  Created by Sumit Joshi on 2019/11/06.
//  Copyright © 2019 Sumit Joshi. All rights reserved.
//

import Foundation

struct UserData: Decodable {
//    let total_count: Int
    let items: [Items]
    
}

struct Items: Decodable {
    let login: String
}
