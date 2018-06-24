//
//  ProfileRoute.swift
//  TestRouting
//
//  Created by Raed MEZRAOUI on 2018-06-22.
//  Copyright © 2018 Raed MEZRAOUI. All rights reserved.
//

import UIKit

protocol ProfileRoute {
    
    var profileTransition: Transition { get }
    func openProfile()
}

extension ProfileRoute where Self: RouterProtocol {
    
    var profileTransition: Transition {
        return PushTransition()
    }
    
    func openProfile() {
        
        let router = ProfileRouter()
        let profileViewController = ProfileViewController(router: router)
        router.viewController = profileViewController
        
        let transition = profileTransition // it's a calculated property so I saved it to the variable in order to have one instance
        router.openTransition = transition
        open(profileViewController, transition: transition)
    }
}
