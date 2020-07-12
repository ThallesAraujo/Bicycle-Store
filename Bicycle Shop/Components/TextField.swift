//
//  TextField.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 12/07/20.
//

import UIKit

class TextField: UITextField {
    
    @IBInspectable var placeholderTextColor: UIColor = UIColor.white{
        didSet{
            self.attributedPlaceholder = NSAttributedString(string: self.placeholder ?? "Texto...", attributes: [NSAttributedString.Key.foregroundColor : placeholderTextColor])
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.white{
        didSet{
            self.layer.borderWidth = 1
            self.layer.cornerRadius = 5
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
}
