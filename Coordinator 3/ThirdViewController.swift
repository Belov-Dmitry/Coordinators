//
//  ThirdViewController.swift
//  Coordinator 3
//
//  Created by Dmitry Belov on 14.01.2024.
//

import UIKit

class ThirdViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemGreen
        title = "Third"
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        view.addSubview(button)
        button.center = view.center
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(goToMain), for: .touchUpInside)
        button.setTitle("to Main", for: .normal)
    }
    
    @objc func goToMain() {
        coordinator?.eventOccurred(with: .goToMainByPOP)
    }
}
