//
//  EnderecoViewModel.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 28/06/20.
//

import Foundation
class EnderecoViewModel: ViewModel{
    
    var model: Any?
    
    func configure(_ modeledView: ModeledView) {
        if let mv = modeledView as? EnderecoModeledView{
            
            let cepDelegate = CustomTextFieldDelegate(textField: mv.cepField)
            cepDelegate.textDidChange = self.setCep
            
            let logradouroDelegate = CustomTextFieldDelegate(textField: mv.logradouroField)
            logradouroDelegate.textDidChange = self.setLogradouro
            
            let numeroDelegate = CustomTextFieldDelegate(textField: mv.numeroField)
            numeroDelegate.textDidChange = self.setNumero
            
            let bairroDelegate = CustomTextFieldDelegate(textField: mv.bairroField)
            bairroDelegate.textDidChange = self.setBairro
            
            let cidadeDelegate = CustomTextFieldDelegate(textField: mv.cidadeField)
            cidadeDelegate.textDidChange = self.setCidade
            
            let estadoDelegate = CustomTextFieldDelegate(textField: mv.estadoField)
            estadoDelegate.textDidChange = self.setEstado
            
            let complementoDelegate = CustomTextFieldDelegate(textField: mv.complementoField)
            complementoDelegate.textDidChange = self.setComplemento
            
        }
    }
    
}
