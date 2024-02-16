//
//  ViewModel1.swift
//  CoordinatorL
//
//  Created by Dmitry Belov on 17.01.2024.
//

import Foundation

class ViewModel1 {
    var model: Model
    private var service: GeneralService?

    init(service: GeneralService) {
        self.service = service
    }

     func getData() {
        model = service.getData()
    }
}

