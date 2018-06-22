//
//  Animator.swift
//  CIC
//
//  Created by Raed MEZRAOUI on 2018-06-21.
//  Copyright © 2018 Raed MEZRAOUI. All rights reserved.
//

import UIKit

protocol Animator: UIViewControllerAnimatedTransitioning {
    var isPresenting: Bool { get set }
}
