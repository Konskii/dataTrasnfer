//
//  TabBarController.swift
//  dataTransfer
//
//  Created by Артём Скрипкин on 19.05.2023.
//

import UIKit

class TabBarController: UITabBarController {

    var username: String?
    var password: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        for vc in viewControllers ?? [] {
            if let profileVC = vc as? ProfileViewController {
                profileVC.configureInfo(username: username, password: password)
            } else {
                print("not profile: \(vc)")
            }
        }
    }

}
