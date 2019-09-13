//
//  LoginCoordinator.swift
//  CoordinatorPOC
//
//  Created by Shindalkar, Suraj Manmath on 12/09/19.
//  Copyright © 2019 Shindalkar, Suraj Manmath (US - Mumbai). All rights reserved.
//

import UIKit

protocol LoginCoordinatorDelegate: AnyObject {
    func didCompleteLoginFlow(loginCoordinator: AnyObject)
}

class LoginCoordinator: Coordinator {
    var childCoordinators: [Coordinator]
    
    var navigationController: UINavigationController
    
    weak var delegate:LoginCoordinatorDelegate?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.childCoordinators = []
    }
    
    func start() {
        let loginController = LoginViewController.init(nibName: "LoginViewController", bundle: nil)
        loginController.delegate = self as LoginViewControllerDelegate
        navigationController.pushViewController(loginController, animated: true)
    }
}

extension LoginCoordinator: LoginViewControllerDelegate {
    func didCompleteAuthentication(controller: LoginViewController) {
        if let delegate = self.delegate {
            delegate.didCompleteLoginFlow(loginCoordinator: self)
        }
    }
}
