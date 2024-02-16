//
//  DetailScreenViewController.swift
//  Coordinator
//
//  Created by Dmitry Belov on 11.01.2024.
//

import UIKit

class DetailScreenViewController: UIViewController, DetailScreenProtocol {
    func showItemDetails(item: String) {
        
    }
    
    var coordinator: Coordinator?
    
    func showItemDetails() {
        print("showItemDetails")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "DetailScreenViewController"
        view.backgroundColor = .systemCyan
        
    }
    

   

}
