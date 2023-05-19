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

    }

    private func configureProfileVC() {
        guard let username,
              let password,
              let profileVC = viewControllers.flatMap({ $0 as? ProfileViewController }) else {
            return
        }
        
    }
}
