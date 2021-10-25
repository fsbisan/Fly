//
//  FlyBoardViewController.swift
//  Fly
//
//  Created by Александр Макаров on 22.10.2021.
//
import UIKit

class FlyBoardViewController: UIViewController {

    private lazy var button11 = FlyCellButton()
    private lazy var button12 = FlyCellButton()
    private lazy var button13 = FlyCellButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUpSubViews(stackView)
        setStackViewConstraints()
    }
    
    private func setUpSubViews(_ subViews: UIView...) {
        subViews.forEach { subView in
            view.addSubview(subView)
        }
    }
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        
        
        return stackView
    }()
    
    
    private func setUpStackView() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40)
        ])
    }
    
    private func setStackViewConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    
}
