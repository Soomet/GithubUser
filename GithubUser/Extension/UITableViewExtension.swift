//
//  UITableViewExtension.swift
//  GithubUser
//
//  Created by Sumit Joshi on 2019/11/23.
//  Copyright © 2019 Sumit Joshi. All rights reserved.
//

import Foundation
import UIKit

extension UITableView {
    func registerXibCell<T: UITableViewCell>(_ type: T.Type, nibName: String? = nil, identifier: String? = nil) {
        var cellNibName = UITableViewCell.className(of: type)
        var cellIdentifier = cellNibName
        if identifier?.isEmpty == false {
            cellIdentifier = identifier!
        }
        if nibName?.isEmpty == false {
            cellNibName = nibName!
        }
        register(UINib(nibName: cellNibName, bundle: nil), forCellReuseIdentifier: cellIdentifier)
    }
    
    func dequeueRegisteredReusableCell<T: UITableViewCell>(type: T.Type, identifier: String? = nil, indexPath: IndexPath) -> T {
        var cellIdentifier = UITableViewCell.className(of: type)
        if identifier != nil {
            cellIdentifier = identifier!
        }
        return self.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! T
    }
    
    private func className<T: UIView>(of type: T.Type) -> String {
        let fullName = NSStringFromClass(type)
        let className = fullName.split {$0 == "."}.map { String($0) }.last
        return className ?? fullName
    }
}
