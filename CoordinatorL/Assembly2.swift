//
//  Assembly2.swift
//  CoordinatorL
//
//  Created by Dmitry Belov on 17.01.2024.
//

import Foundation

class Assembly2 { // сборщик
    
    func create(service: GeneralService) {
        let viewcontroller = ViewController2()
        let viewModel = ViewModel2(service: service)
        viewController.viewModel = viewModel

        return viewcontroller
    }
}
