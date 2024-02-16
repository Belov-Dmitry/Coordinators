//
//  ThirdViewController.swift
//  Coordinator
//
//  Created by Dmitry Belov on 24.12.2023.
//

import UIKit

class ThirdViewController: UIViewController {
    
    weak var thirdViewControllerCoordinator: ThirdViewControllerCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
        title = "Third"
        let saveButton = UIBarButtonItem(barButtonSystemItem: .save, target: ThirdViewController.self, action: #selector(saveChanges))
        //self.navigationItem.rightBarButtonItem = saveButton
        thirdViewControllerCoordinator?.navigationController.navigationItem.rightBarButtonItem = saveButton
        thirdViewControllerCoordinator?.navigationController.navigationBar.tintColor = .white
    }
    
    
    @objc func saveChanges() {
        print("Data saved")
    }
}
