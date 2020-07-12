//
//  LoginViewModel.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 28/06/20.
//

import Foundation
class LoginViewModel: ViewModel{
    var model: Any?
    
    func configure(_ modeledView: ModeledView) {
        
        if let mv = modeledView as? LoginModeledView{
            
            let emailDelegate = CustomTextFieldDelegate(textField: mv.emailField)
            emailDelegate.textDidChange = self.setEmail
            
            let senhaDelegate = CustomTextFieldDelegate(textField: mv.senhaField)
            senhaDelegate.textDidChange = self.setSenha
            
        }
        
    }
    
    
}
