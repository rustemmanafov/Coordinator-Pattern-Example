//
//  Coordinator.swift
//  Coordinator Pattern
//
//  Created by Rustam Manafli on 09.10.23.
//

import UIKit

protocol Coordinator {
    //var childCoordinator: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
}
