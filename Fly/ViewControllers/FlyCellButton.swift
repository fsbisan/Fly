//
//  FlyCellButton.swift
//  Fly
//
//  Created by Александр Макаров on 24.10.2021.
//

import UIKit

class FlyCellButton: UIButton {
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
    }
   
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    convenience init() {
        self.init(frame: .zero)
        
        setTitle("M", for: .normal)
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        setTitleColor(.black, for: .normal)
        layer.cornerRadius = 4
        backgroundColor = UIColor(red: 255, green: 255, blue: 0, alpha: 1)
    }
    
}
