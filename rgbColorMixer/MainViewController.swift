//
//  MainViewController.swift
//  rgbColorMixer
//
//  Created by Marius Malyshev on 14.02.2021.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setNewValue(for backgroundColor:UIColor)
}

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    }
}

extension MainViewController: SettingsViewControllerDelegate {
    func setNewValue(for backgroundColor: UIColor) {
        super.view.backgroundColor = backgroundColor
    }
}
