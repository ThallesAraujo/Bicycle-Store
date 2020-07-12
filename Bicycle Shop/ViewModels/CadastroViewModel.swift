//
//  CadastroViewModel.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 28/06/20.
//

import Foundation
class CadastroViewModel: ViewModel{
    
    var model: Any?
    
    func configure(_ modeledView: ModeledView) {
        
        if let mv = modeledView as? CadastroModeledView{
            
            let nomeDelegate = CustomTextFieldDelegate(textField: mv.nomeField)
            nomeDelegate.textDidChange = self.setNome
            
            let sobrenomeDelegate = CustomTextFieldDelegate(textField: mv.sobrenomeField)
            sobrenomeDelegate.textDidChange = self.setSobrenome
            
            let dataNascimentoDelegate = CustomTextFieldDelegate(textField: mv.dataNascimentoField)
            dataNascimentoDelegate.textDidChange = self.setDataNascimento
            
            let cpfDelegate = CustomTextFieldDelegate(textField: mv.cpfField)
            cpfDelegate.textDidChange = self.setCpf
            
            let emailDelegate = CustomTextFieldDelegate(textField: mv.emailField)
            emailDelegate.textDidChange = self.setEmail
            
            let senhaDelegate = CustomTextFieldDelegate(textField: mv.senhaField)
            senhaDelegate.textDidChange = self.setSenha
            
            let repetirSenhaDelegate = CustomTextFieldDelegate(textField: mv.repetirSenhaField)
            repetirSenhaDelegate.textDidChange = self.setRepetirSenha
            
            let telefonePrimarioDelegate = CustomTextFieldDelegate(textField: mv.telefonePrimarioField)
            telefonePrimarioDelegate.textDidChange = self.setTelefonePrimario
            
            let telefoneSecundarioDelegate = CustomTextFieldDelegate(textField: mv.telefoneSecundarioField)
            telefoneSecundarioDelegate.textDidChange = self.setTelefoneSecundario
            
        }
        
    }
    
}
