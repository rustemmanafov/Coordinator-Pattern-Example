//
//  MainVC.swift
//  Coordinator Pattern
//
//  Created by Rustam Manafli on 09.10.23.
//

import UIKit

class MainVC: UIViewController, Storyboarded {
    
    var coordinator: MainCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()

    }
  
    @IBAction func loginAct(_ sender: Any) {
        coordinator?.showLoginVC()
    }
    
    @IBAction func registerAct(_ sender: Any) {
        coordinator?.showRegisterVC()
    }
}
