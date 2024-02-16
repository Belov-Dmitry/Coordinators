//
//  Coordinator.swift
//  Coordinator 3
//
//  Created by Dmitry Belov on 14.01.2024.
//

import UIKit
enum Event {
    case goToSecond
    case goToThird
    case goToMain
    case goToMainByPOP
}

protocol Coordinator {
    var navigationController: UINavigationController? { get set }
    
    func eventOccurred(with type: Event)
    func start()
    func showThird()
}

protocol Coordinating {
    var coordinator: Coordinator? { get set }
}
