//
//  FriendsViewController.swift
//  TestRouting
//
//  Created by Raed MEZRAOUI on 2018-06-22.
//  Copyright © 2018 Raed MEZRAOUI. All rights reserved.
//

import UIKit

class FriendsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    private var router: FriendsRouter.Routes? = nil
    
    static func instantiate(router: FriendsRouter.Routes) -> FriendsViewController {
        
        let viewController =  UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FriendsViewController") as! FriendsViewController
        viewController.router = router
        
        return viewController
    }
    
//    init(router: FriendsRouter.Routes) {
//        self.router = router
//        super.init(nibName: nil, bundle: nil)
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        self.router = FriendsRouter()
//        super.init(coder: aDecoder)
//    }
    
    @IBAction func showProfile(_ sender: Any) {
        router?.openProfile()
    }
}
