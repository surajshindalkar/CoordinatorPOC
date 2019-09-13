//
//  ViewController.swift
//  CoordinatorPOC
//
//  Created by Shindalkar, Suraj Manmath on 09/09/19.
//  Copyright © 2019 Shindalkar, Suraj Manmath (US - Mumbai). All rights reserved.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    func start()
}

class BaseViewController: UIViewController {
        
}

