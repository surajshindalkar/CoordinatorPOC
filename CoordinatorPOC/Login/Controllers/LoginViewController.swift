//
//  LoginViewController.swift
//  CoordinatorPOC
//
//  Created by Shindalkar, Suraj Manmath on 12/09/19.
//  Copyright © 2019 Shindalkar, Suraj Manmath (US - Mumbai). All rights reserved.
//

import UIKit

protocol LoginViewControllerDelegate: AnyObject  {
    func didCompleteAuthentication(controller: LoginViewController)
}

class LoginViewController: UIViewController {
    
    weak var delegate: LoginViewControllerDelegate?

    @IBAction func didSelectLoginButton(_ sender: Any) {
        
        if let delegate = self.delegate {
            delegate.didCompleteAuthentication(controller: self)
        }
        
    }
}
