//
//  ViewController.swift
//  GithubUser
//
//  Created by Sumit Joshi on 2019/11/05.
//  Copyright © 2019 Sumit Joshi. All rights reserved.
//

import UIKit

class UserViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var searchUserTextField: UITextField!
    @IBOutlet weak var resultUserTableView: UITableView! {
        didSet {
            //resultUserTableView.registerXibCell
        }
    }
    
    var userManager = UserManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        searchUserTextField.delegate = self
    }
    @IBAction func searchPressed(_ sender: Any) {
        searchUserTextField.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchUserTextField.endEditing(true)
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if searchUserTextField.text != "" {
            return true
        } else {
            searchUserTextField.placeholder = "Type the username to search"
            return false
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        // use searchUserTextField.text to get the user
        if let user = searchUserTextField.text {
            userManager.fetchUser(userName: user)
        }
        searchUserTextField.text = ""
    }
}

