////
////  Assembly1.swift
////  CoordinatorL
////
////  Created by Dmitry Belov on 17.01.2024.
////
//
//import Foundation
//import UIKit
//
//
//
//class Coordinator {
//    let service = GeneralService()
//    func moveToSettings() {
//        let assembly = Assembly1()
//        let controller = assembly.create(service: service)
//        navigationController.push(controller)
//    }
//
//    func moveToMainScreen() {
//        let assembly = Assembly2()
//        let controller = assembly.create(service: service)
//        navigationController.push(controller)
//    }
//}
class Assembly1 { // сборщик
    func create(service: GeneralService) -> UIViewController {
        let viewcontroller = ViewController1()
        let viewModel = ViewModel1(service: service)
        viewController.viewModel = viewModel

        return viewcontroller
    }
}

//class ViewController1 {
//     var viewModel: ViewModel1
//
//    didSelectRow at {
//        viewModel.sendData()
//    }
// }
//
//class ViewModel1 {
//    var model: Model
//    private var service: GeneralService?
//
//    init(service: GeneralService) {
//        self.service = service
//    }
//
//     func getData() {
//        model = service.getData()
//    }
//}
//
//class GeneralService {
//    func sendData(data: Model) {
//    }
//    
//    func getData() -> Model {
//        return suck
//    }
//}
//
//class Assembly2 { // сборщик
//    func create(service: GeneralService) {
//        let viewcontroller = ViewController2()
//        let viewModel = ViewModel2(service: service)
//        viewController.viewModel = viewModel
//
//        return viewcontroller
//    }
//}
//
//class ViewController2 {
//    var viewModel: ViewModel2
//}
//
//class ViewModel2 {
//    var service: GeneralService?
//
//    init(service: GeneralService) {
//        self.service = service
//    }
// }
