//
//  Storyboarded.swift
//  Coordinator Pattern
//
//  Created by Rustam Manafli on 22.10.23.
//

import Foundation
import UIKit

enum StoryboardName: String {
    case main = "Main"
}

protocol Storyboarded {
    static func instantiate(name: StoryboardName) -> Self
}

extension Storyboarded where Self: UIViewController {
    
    static func instantiate(name: StoryboardName) -> Self {
        let controllerId = String(describing: self)
        let storyboard = UIStoryboard(name: name.rawValue, bundle: Bundle.main)
        
        return storyboard.instantiateViewController(withIdentifier: controllerId) as! Self
    }
}
