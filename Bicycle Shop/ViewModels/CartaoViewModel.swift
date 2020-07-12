//
//  CartaoViewModel.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 28/06/20.
//

import Foundation
class CartaoViewModel: ViewModel{
    var model: Any?
    
    func configure(_ modeledView: ModeledView) {
        if let mv = modeledView as? CartaoModeledView{
            
            let numeroDelegate = CustomTextFieldDelegate(textField: mv.numeroField)
            numeroDelegate.textDidChange = self.setNumero
            
            let vencimentoDelegate = CustomTextFieldDelegate(textField: mv.vencimentoField)
            vencimentoDelegate.textDidChange = self.setVencimento
            
            let titularDelegate = CustomTextFieldDelegate(textField: mv.titularField)
            titularDelegate.textDidChange = self.setTitular
            
            let cvvDelegate = CustomTextFieldDelegate(textField: mv.cvvField)
            cvvDelegate.textDidChange = self.setCvv
            
        }
    }
    
    
    
    
}
