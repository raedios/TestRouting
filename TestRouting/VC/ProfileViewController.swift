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

    private let router: ProfileRouter.Routes?
    
    init(router: ProfileRouter.Routes) {
        self.router = router
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.router = nil
        super.init(coder: aDecoder)
    }
    
    func closeButtonPressed() {
        router?.close()
    }

}
