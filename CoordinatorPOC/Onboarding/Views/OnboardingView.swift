//
//  OnboardingView.swift
//  CoordinatorPOC
//
//  Created by Shindalkar, Suraj Manmath on 09/09/19.
//  Copyright © 2019 Shindalkar, Suraj Manmath (US - Mumbai). All rights reserved.
//

import UIKit

class OnboardingView: BaseView {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var doneButton: UIButton!
    
    override func setUpUI() {
        welcomeLabel.text = "Welcome to Massage Envy"
        doneButton.setTitle("Done", for: .normal)
        doneButton.titleLabel?.font = UIFont.systemFont(ofSize: 24)
        welcomeLabel.font = UIFont.systemFont(ofSize: 24)
    }

    func updateUI(welcomeText: String, doneButtonTitle: String) {
        welcomeLabel.text = welcomeText
        doneButton.setTitle(doneButtonTitle, for: .normal)
    }
    
}
