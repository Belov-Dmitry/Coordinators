//
//  MainViewController.swift
//  Coordinator
//
//  Created by Dmitry Belov on 24.12.2023.
//

import UIKit

class MainViewController: UIViewController {
    
    weak var mainViewControllerCoordinator: MainViewControllerCoordinator?
    let login = "login"
    let pass = "pass"

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        title = "Main"
        
        
        if login == "login" || pass == "pass" {
            print("login/passwodr correct")
            mainViewControllerCoordinator?.showSecond()
        }else {
            print("login/passwodr not correct")
            mainViewControllerCoordinator?.showThird()
        }
    }
    
    

}
