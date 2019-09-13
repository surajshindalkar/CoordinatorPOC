//
//  LoginView.swift
//  CoordinatorPOC
//
//  Created by Shindalkar, Suraj Manmath on 09/09/19.
//  Copyright © 2019 Shindalkar, Suraj Manmath (US - Mumbai). All rights reserved.
//

import UIKit

class LoginView: BaseView {

    // MARK: IBOutlets
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    // MARK: Override
    
    override func setUpUI() {
        usernameLabel.text = "Username"
        usernameLabel.font = UIFont.systemFont(ofSize: 14.0)
        
        passwordLabel.text = "Password"
        passwordLabel.font = UIFont.systemFont(ofSize: 14.0)
    }
    
}
