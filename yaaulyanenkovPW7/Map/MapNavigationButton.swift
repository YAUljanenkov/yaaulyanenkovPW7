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
            self.setTitleColor(.white, for: .normal)
        case .grey:
            self.backgroundColor = .systemGray
            self.setTitleColor(.white, for: .normal)
            self.setTitleColor(.gray, for: .disabled)
        }
    }
    
    override public var isEnabled: Bool {
        didSet {
            if self.isEnabled {
                self.backgroundColor = self.backgroundColor?.withAlphaComponent(1.0)
            } else {
                self.backgroundColor = self.backgroundColor?.withAlphaComponent(0.8)
            }
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
