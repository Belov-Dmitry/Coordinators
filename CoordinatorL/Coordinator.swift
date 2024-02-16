//
//  Coordinator.swift
//  CoordinatorL
//
//  Created by Dmitry Belov on 17.01.2024.
//

import Foundation
import UIKit

class Coordinator {
    let service = GeneralService()
    func moveToSettings() {
        let assembly = Assembly1()
        let controller = assembly.create(service: service)
        navigationController.push(controller)
    }

    func moveToMainScreen() {
        let assembly = Assembly2()
        let controller = assembly.create(service: service)
        navigationController.push(controller)
    }
}

