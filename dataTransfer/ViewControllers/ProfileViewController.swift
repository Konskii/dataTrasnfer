//
//  ProfileViewController.swift
//  dataTransfer
//
//  Created by Артём Скрипкин on 19.05.2023.
//

import UIKit

class ProfileViewController: UIViewController {


    @IBAction func didTap() {
        guard let detailsVC = storyboard?.instantiateViewController(identifier: "Details") as? DetailsViewController else { return }
        navigationController?.pushViewController(detailsVC, animated: true)
    }

    func configureInfo(username: String, password: String) {

    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
