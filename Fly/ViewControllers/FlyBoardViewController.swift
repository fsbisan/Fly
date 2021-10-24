//
//  FlyBoardViewController.swift
//  Fly
//
//  Created by Александр Макаров on 22.10.2021.
//
import UIKit

class FlyBoardViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUpSubViews(button11)
        setStackViewConstraints()
    }
    
    private func setUpSubViews(_ subViews: UIView...) {
        subViews.forEach { subView in
            view.addSubview(subView)
        }
    }
    
    let button11 = FlyCellButton()
    
    let stackView = UIStackView()
    
    private func setUpStackView() {
        
    }
    
    private func setStackViewConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    
}
