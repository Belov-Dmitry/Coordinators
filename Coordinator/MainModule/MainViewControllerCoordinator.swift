//
//  MainViewControllerCoordinator.swift
//  Coordinator
//
//  Created by Dmitry Belov on 24.12.2023.
//

import UIKit

class MainViewControllerCoordinator: BaseCoordinator {

    private var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    override func start() {
        let mainViewController = MainViewController()
        mainViewController.mainViewControllerCoordinator = self
        navigationController.pushViewController(mainViewController, animated: true)
    }
    
    func showSecond() {
        let secondViewControllerCoordinator = SecondViewControllerCoordinator(navigationController: navigationController)
        add(coordinator: secondViewControllerCoordinator)
        secondViewControllerCoordinator.start()
        print(#function)
    }
    func showThird() {
        let thirdViewControllerCoordinator = ThirdViewControllerCoordinator(navigationController: navigationController)
        add(coordinator: thirdViewControllerCoordinator)
        thirdViewControllerCoordinator.start()
    }
    func showFourth() {
        let thirdViewControllerCoordinator = ThirdViewControllerCoordinator(navigationController: navigationController)
        add(coordinator: thirdViewControllerCoordinator)
        thirdViewControllerCoordinator.start()
    }
    
}
