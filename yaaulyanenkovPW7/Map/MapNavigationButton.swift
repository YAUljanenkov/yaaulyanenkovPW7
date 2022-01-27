//
//  MapNavigationButton.swift
//  yaaulyanenkovPW7
//
//  Created by Ярослав Ульяненков on 22.01.2022.
//

import UIKit

class MapNavigationButton : UIButton {
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.cornerRadius = 10;
        
    }
    
    public init(type: MapNavigationButtonType) {
        super.init(frame: .null)
        self.setHeight(to: 50)
        self.layer.cornerRadius = 10
        self.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        switch type {
        case .blue:
            self.backgroundColor = .systemBlue
            self.titleLabel?.textColor = .white
        case .grey:
            self.backgroundColor = .systemGray
            self.titleLabel?.textColor = .black
        }
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}

enum MapNavigationButtonType {
    case blue;
    case grey;
}
