//
//  UserInfoCellViewController.swift
//  GithubUser
//
//  Created by Sumit Joshi on 2019/11/23.
//  Copyright © 2019 Sumit Joshi. All rights reserved.
//

import Foundation
import UIKit
import RxSwift

class UserInfoCellViewController: UITableViewCell {
    
    @IBOutlet weak var userImage: UIImageView! {
        didSet {
            // show the profile image on a circle
            userImage.layer.cornerRadius = userImage.frame.size.width / 2
            userImage.layer.masksToBounds = true
        }
    }
    
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userStar: UIButton!
    
    // Disposebag of a cell
    var disposeBag = DisposeBag()
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    // Dispose process of reusable cell
    override func prepareForReuse() {
        super.prepareForReuse()
        disposeBag = DisposeBag()
    }
    
}
