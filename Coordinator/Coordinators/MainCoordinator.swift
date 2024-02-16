//
//  MainCoordinator.swift
//  Coordinator
//
//  Created by Dmitry Belov on 11.01.2024.
//

import UIKit
class MainCoordinator: Coordinator {
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let listViewController = ListScreenViewController()
        listViewController.coordinator = self
        // Инициализируйте и отобразите начальный экран списка элементов
        navigationController.pushViewController(listViewController, animated: true)
    }
    
    // Переход на экран деталей элемента
    func showDetailScreen() {
        let detailViewController = DetailScreenViewController()
        detailViewController.coordinator = self
        detailViewController.showItemDetails()
        // Отобразите экран деталей элемента
        navigationController.pushViewController(detailViewController, animated: true)
    }
}
