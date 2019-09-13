//
//  OnboardingViewController.swift
//  CoordinatorPOC
//
//  Created by Shindalkar, Suraj Manmath on 12/09/19.
//  Copyright © 2019 Shindalkar, Suraj Manmath (US - Mumbai). All rights reserved.
//

import UIKit

protocol OnboardingViewControllerDelegate: AnyObject {
    func didSelectDoneButton(controller: OnboardingViewController)
}

class OnboardingViewController: UIViewController {
    
    weak var delegate: OnboardingViewControllerDelegate?
    
    @IBAction func didSelectDoneButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        if let delegate = self.delegate {
            delegate.didSelectDoneButton(controller: self)
        }
        
    }
}
