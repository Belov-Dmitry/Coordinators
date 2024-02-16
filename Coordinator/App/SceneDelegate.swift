//
//  SceneDelegate.swift
//  Coordinator
//
//  Created by Dmitry Belov on 24.12.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowsScene = scene as? UIWindowScene else { return }
        let window = UIWindow(windowScene: windowsScene)
        
        let navigationController = UINavigationController()
        let coordinator = MainCoordinator(navigationController: navigationController)
        coordinator.start()
        
        window.rootViewController = navigationController
        self.window = window
        window.makeKeyAndVisible()
    }

    


}

