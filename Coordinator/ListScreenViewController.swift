//
//  ListScreenViewController.swift
//  Coordinator
//
//  Created by Dmitry Belov on 11.01.2024.
//

import UIKit

class ListScreenViewController: UIViewController, ListScreenProtocol {
    var coordinator: Coordinator?
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .orange
        title = "ListScreenViewController"
        
        if let coordinator = coordinator as? MainCoordinator {
                    coordinator.showDetailScreen()
                }
    }
    

}
