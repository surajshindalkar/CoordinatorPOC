//
//  OnboardingCoordinator.swift
//  CoordinatorPOC
//
//  Created by Shindalkar, Suraj Manmath on 11/09/19.
//  Copyright © 2019 Shindalkar, Suraj Manmath (US - Mumbai). All rights reserved.
//

import Foundation
import UIKit


protocol OnboardingCoordinatorDelegagte: AnyObject {
    func didSelectDoneOfOnoarding(coordinator: OnboardingCoordinator)
}

class OnboardingCoordinator: Coordinator {
    var childCoordinators: [Coordinator]
    var navigationController: UINavigationController
    weak var delegate:OnboardingCoordinatorDelegagte?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.childCoordinators = []
    }
    
    func start() {
        let onboardingController = OnboardingViewController.init(nibName: "OnboardingViewController", bundle: nil)
        onboardingController.delegate = self as! OnboardingViewControllerDelegate
        navigationController.pushViewController(onboardingController, animated: true)
    }
}

extension OnboardingCoordinator: OnboardingViewControllerDelegate {
    func didSelectDoneButton(controller: OnboardingViewController) {
        if let delegate = self.delegate {
            delegate.didSelectDoneOfOnoarding(coordinator: self)
        }
    }
}
