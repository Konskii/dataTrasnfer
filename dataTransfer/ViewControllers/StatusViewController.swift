//
//  StatusViewController.swift
//  dataTransfer
//
//  Created by Артём Скрипкин on 19.05.2023.
//

import UIKit

// 1
protocol StatusViewControllerProtocol: AnyObject {
    func setStatus(statusValue: Bool)
}

class StatusViewController: UIViewController {

    //2
    weak var delegate: StatusViewControllerProtocol?

    @IBOutlet var switchButton: UISwitch!

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // 3
        print(delegate)
        delegate?.setStatus(statusValue: switchButton.isOn)
    }
}
