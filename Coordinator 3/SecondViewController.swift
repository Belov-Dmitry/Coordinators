//
//  SecondViewController.swift
//  Coordinator 3
//
//  Created by Dmitry Belov on 14.01.2024.
//

import UIKit

class SecondViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Second"
        view.backgroundColor = .systemPink
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        view.addSubview(button)
        button.center = view.center
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(goToThird), for: .touchUpInside)
        button.setTitle("to Third", for: .normal)
        
    }
    
    @objc func goToThird() {
        coordinator?.eventOccurred(with: .goToThird)
    }
   

}
