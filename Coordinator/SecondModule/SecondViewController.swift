//
//  SecondViewController.swift
//  Coordinator
//
//  Created by Dmitry Belov on 24.12.2023.
//

import UIKit

class SecondViewController: UIViewController {
    
    weak var secondViewControllerCoordinator: SecondViewControllerCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        title = "Second"
        
        secondViewControllerCoordinator?.showThird()
    }

}
