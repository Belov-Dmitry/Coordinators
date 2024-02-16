//
//  ThirdViewControllerCoordinator.swift
//  Coordinator
//
//  Created by Dmitry Belov on 24.12.2023.
//

import UIKit

class ThirdViewControllerCoordinator: BaseCoordinator {
    
     var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    override func start() {
        let thirdViewController = ThirdViewController()
        thirdViewController.thirdViewControllerCoordinator = self
        navigationController.pushViewController(thirdViewController, animated: true)
    }
    func showMain() {
        let mainViewControllerCoordinator = MainViewControllerCoordinator(navigationController: navigationController)
        add(coordinator: mainViewControllerCoordinator)
        mainViewControllerCoordinator.start()
    }
}

