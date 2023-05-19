//
//  ProfileViewController.swift
//  dataTransfer
//
//  Created by Артём Скрипкин on 19.05.2023.
//

import UIKit

class ProfileViewController: UIViewController {

    private var username: String?
    private var password: String?

    @IBOutlet private var userNameLabel: UILabel!
    @IBOutlet private var passwordLabel: UILabel!

    @IBAction private func didTap() {
        guard let detailsVC = storyboard?.instantiateViewController(identifier: "Details") as? DetailsViewController else { return }
        detailsVC.color = .green
        navigationController?.pushViewController(detailsVC, animated: true)
    }

    func configureInfo(username: String?, password: String?) {
        self.username = username
        self.password = password
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = username
        passwordLabel.text = password
    }
}
