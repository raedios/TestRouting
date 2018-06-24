//
//  FreindsBuilder.swift
//  TestRouting
//
//  Created by Raed MEZRAOUI on 2018-06-24.
//  Copyright © 2018 Raed MEZRAOUI. All rights reserved.
//

import Foundation

final class FreindsBuilder {
    
    static func module() -> FriendsViewController {
        
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let viewController = storyboard.instantiateViewController(withIdentifier: "FriendsViewController") as! FriendsViewController
        
        let router = FriendsRouter()
        let viewController = FriendsViewController.instantiate(router: router)
        router.viewController = viewController
        return viewController
    }
}
