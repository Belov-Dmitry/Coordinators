//
//  ViewController.swift
//  Coordinator 3
//
//  Created by Dmitry Belov on 14.01.2024.
//

import UIKit

class ViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    var coordinatorClass: MainCoordinator?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        title = "Home"
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        view.addSubview(button)
        button.center = view.center
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        button.setTitle("to Second", for: .normal)
    }
    @objc func didTapButton() {
        //coordinator?.eventOccurred(with: .goToSecond)
        //coordinator?.showThird()
        coordinatorClass?.showThird()
        print("showThird")
    }

}

