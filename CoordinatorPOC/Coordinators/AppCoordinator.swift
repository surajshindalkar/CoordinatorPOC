//
//  AppCoordinator.swift
//  CoordinatorPOC
//
//  Created by Shindalkar, Suraj Manmath on 09/09/19.
//  Copyright © 2019 Shindalkar, Suraj Manmath (US - Mumbai). All rights reserved.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    var childCoordinators: [Coordinator]
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.childCoordinators = []
    }
    
    func start() {

        let firstTimeUse = !UserDefaults.standard.bool(forKey: "hasUserOnboarded")
        
        if firstTimeUse {
            showOnboarding()
        } else {
            showLogin()
        }
        
    }
    
    fileprivate func showOnboarding() {
        let onboardingCoordinator = OnboardingCoordinator(navigationController: navigationController)
        childCoordinators.append(onboardingCoordinator)
        onboardingCoordinator.delegate = self as OnboardingCoordinatorDelegagte
        onboardingCoordinator.start()
    }
    
    fileprivate func showLogin() {
        let loginCoordinator = LoginCoordinator(navigationController: navigationController)
        loginCoordinator.delegate = self as LoginCoordinatorDelegate
        childCoordinators.append(loginCoordinator)
        loginCoordinator.start()
    }
}

extension AppCoordinator: OnboardingCoordinatorDelegagte {
    
    func didSelectDoneOfOnoarding(coordinator: OnboardingCoordinator) {
        childCoordinators.removeLast()
        showLogin()
    }
}

extension AppCoordinator: LoginCoordinatorDelegate {
    
    func didCompleteLoginFlow(loginCoordinator: AnyObject) {
        childCoordinators.removeLast()
        showLogin()
    }
}
