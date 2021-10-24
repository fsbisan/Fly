//
//  ViewController.swift
//  Fly
//
//  Created by Александр Макаров on 18.10.2021.
//

import UIKit

class StartViewController: UIViewController {
    private lazy var startButton: UIButton = {
        let button = UIButton()
        
        button.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        button.setTitle("Start", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.setTitleColor(.yellow, for: .normal)
        button.layer.cornerRadius = 4
        button.addTarget(self, action: #selector(start), for: .touchUpInside)
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUpSubviews(startButton)
        setStartButtonConstraints()
    }
    
    private func setUpSubviews(_ subviews: UIView...) {
        subviews.forEach { subview in
            view.addSubview(subview)
        }
    }
    
    @objc private func start() {
        let flyBoard = FlyBoardViewController()
        flyBoard.modalPresentationStyle = .fullScreen
        present(flyBoard, animated: true)
    }
    
    private func setStartButtonConstraints() {
        startButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            startButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            startButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            startButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
    }
    
}

