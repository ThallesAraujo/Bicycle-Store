//
//  CustomTextFieldDelegate.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 28/06/20.
//

import Foundation
import UIKit
class CustomTextFieldDelegate: NSObject, UITextFieldDelegate{
    
    var textDidChange: (_ text: String) -> Void = { text in }
    
    init(textField: UITextField) {
        super.init()
        textField.delegate = self
        textField.addTarget(self, action: #selector(self.textFieldDidChange(_:)), for: .editingChanged)
    }

    @objc func textFieldDidChange(_ textField: UITextField){
        self.textDidChange(textField.text ?? "")
    }
    
}
