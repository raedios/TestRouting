//
//  Transition.swift
//  CIC
//
//  Created by Raed MEZRAOUI on 2018-06-21.
//  Copyright © 2018 Raed MEZRAOUI. All rights reserved.
//

import Foundation
import UIKit

protocol Transition: class {
    var viewController: UIViewController? { get set }
    
    func open(_ viewController: UIViewController)
    func close(_ viewController: UIViewController)
}
