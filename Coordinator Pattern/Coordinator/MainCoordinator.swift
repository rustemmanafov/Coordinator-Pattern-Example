//
//  MainCoordinator.swift
//  Coordinator Pattern
//
//  Created by Rustam Manafli on 09.10.23.
//

import UIKit

class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let controller = MainVC.instantiate(name: .main)
        controller.coordinator = self
        navigationController.show(controller, sender: nil)
    }
    
    func showLoginVC() {
        let controller = LoginVC.instantiate(name: .main)
        navigationController.show(controller, sender: nil)
    }
    
    func showRegisterVC() {
        let controller = RegisterVC.instantiate(name: .main)
        navigationController.show(controller, sender: nil)
    }
}

