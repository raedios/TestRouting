//
//  AppSettingsRoute.swift
//  CIC
//
//  Created by Raed MEZRAOUI on 2018-06-21.
//  Copyright © 2018 Raed MEZRAOUI. All rights reserved.
//

import Foundation
import UIKit

protocol AppSettingsRoute {
    func openAppSettings()
}

extension AppSettingsRoute {
    func openAppSettings() {
        UIApplication.shared.open(URL(string:UIApplicationOpenSettingsURLString)!, options: [:], completionHandler: nil)
    }
}
