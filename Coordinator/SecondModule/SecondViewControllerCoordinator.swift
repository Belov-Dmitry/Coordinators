//
//  SecondViewControllerCoordinator.swift
//  Coordinator
//
//  Created by Dmitry Belov on 24.12.2023.
//

import UIKit

class SecondViewControllerCoordinator: BaseCoordinator {
    
    private var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    override func start() {
        let secondViewController = SecondViewController()
        secondViewController.secondViewControllerCoordinator = self
        navigationController.pushViewController(secondViewController, animated: true)
    }
    
    func showThird() {
        let thirdViewControllerCoordinator = ThirdViewControllerCoordinator(navigationController: navigationController)
        add(coordinator: thirdViewControllerCoordinator)
        thirdViewControllerCoordinator.start()
    }
    func showMain() {
        let mainViewControllerCoordinator = MainViewControllerCoordinator(navigationController: navigationController)
        add(coordinator: mainViewControllerCoordinator)
        mainViewControllerCoordinator.start()
    }
}

