//
//  ProfileViewController.swift
//  TestRouting
//
//  Created by Raed MEZRAOUI on 2018-06-22.
//  Copyright © 2018 Raed MEZRAOUI. All rights reserved.
//

import UIKit

final class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    private var router: ProfileRouter.Routes? = nil
    
    static func instantiate(router: ProfileRouter.Routes) -> ProfileViewController {
        
        let viewController =  UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
        viewController.router = router
        
        return viewController
    }
    
//    init(router: ProfileRouter.Routes) {
//        self.router = router
//        super.init(nibName: nil, bundle: nil)
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
//    required init?(coder aDecoder: NSCoder) {
//        self.router = ProfileRouter()
//        //super.init(coder: aDecoder)
//        super.init(nibName: nil, bundle: nil)
//    }
    
    func closeButtonPressed() {
        router?.close()
    }

}
