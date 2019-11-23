//
//  UITableViewCellExtension.swift
//  GithubUser
//
//  Created by Sumit Joshi on 2019/11/23.
//  Copyright © 2019 Sumit Joshi. All rights reserved.
//

import Foundation
import UIKit

extension UITableViewCell {
    static func className<T: UITableViewCell>(of cellClass: T.Type) -> String {
        let fullName = NSStringFromClass(cellClass)
        let className = fullName.split {$0 == "."}.map { String($0) }.last
        return className ?? fullName
    }
    
    func classIdentifier() -> String {
        let fullName = NSStringFromClass(self.classForCoder)
        let className = fullName.split {$0 == "."}.map { String($0) }.last
        return className ?? fullName
    }
    
}
