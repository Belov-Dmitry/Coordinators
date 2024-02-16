//
//  BaseCoordinator.swift
//  Coordinator
//
//  Created by Dmitry Belov on 24.12.2023.
//

import Foundation

class BaseCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    
    func start() {
        fatalError("Child should implement func start()")
    }
}
