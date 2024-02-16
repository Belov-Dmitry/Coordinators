//
//  MainCoordinator.swift
//  Coordinator 3
//
//  Created by Dmitry Belov on 14.01.2024.
//

import UIKit
class MainCoordinator: Coordinator {
    var navigationController: UINavigationController?
    
    func start() {
        var vc: UIViewController & Coordinating = ViewController()
        vc.coordinator = self
        navigationController?.pushViewController(vc, animated: false)
        //navigationController?.setViewControllers([vc], animated: false)
    }
    
    func showThird () {
        var vc: UIViewController & Coordinating = ThirdViewController()
        vc.coordinator = self
        navigationController?.pushViewController(vc, animated: true)
    }
    func eventOccurred(with type: Event) {
        switch type {
        case .goToSecond:
            var vc: UIViewController & Coordinating = SecondViewController()
            vc.coordinator = self
            navigationController?.pushViewController(vc, animated: true)
            print(navigationController?.viewControllers ?? "navigationController?.viewControllers is empty")
            
        case .goToThird:
            var vc: UIViewController & Coordinating = ThirdViewController()
            vc.coordinator = self
            navigationController?.pushViewController(vc, animated: true)
            print(navigationController?.viewControllers ?? "navigationController?.viewControllers is empty")
            
        case .goToMain:
            var vc: UIViewController & Coordinating = ViewController()
            vc.coordinator = self
            navigationController?.pushViewController(vc, animated: true)
            
        case .goToMainByPOP:
            if var array = navigationController?.viewControllers {
                for _ in array {
                    if array.count > 1 {
                        print("remove \(array.last)")
                        array.removeLast()
                    } else {
                        navigationController?.viewControllers = array
                        print("+++++++++++++++++++++++++++++++++++++")
                        print(navigationController?.viewControllers ?? "navigationController?.viewControllers is empty")
                    }
                }
            }
        }
    }
    
    
}
