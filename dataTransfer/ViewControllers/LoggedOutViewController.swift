//
//  LoggedOutViewController.swift
//  dataTransfer
//
//  Created by Артём Скрипкин on 19.05.2023.
//

import UIKit

class LoggedOutViewController: UIViewController {

    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!

    @IBOutlet var statusLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let tabBarController = segue.destination as? TabBarController {
            tabBarController.username = loginTextField.text
            tabBarController.password = passwordTextField.text
        } else if let statusVC = segue.destination as? StatusViewController {
            statusVC.delegate = self
        }
    }
}

// 4
extension LoggedOutViewController: StatusViewControllerProtocol {
    func setStatus(statusValue: Bool) {
        statusLabel.text = "\(statusValue)"
    }
}
