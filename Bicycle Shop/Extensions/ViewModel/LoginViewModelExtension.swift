//
//  LoginViewModelExtension.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 28/06/20.
//

import Foundation
extension LoginViewModel{
    
    func setEmail(_ email: String){
        self.castModel()?.email = email
    }
    
    func setSenha(_ senha: String){
        self.castModel()?.senha = senha
    }
    
    func castModel() -> Cliente?{
        
        return self.model as? Cliente
        
    }
    
}
