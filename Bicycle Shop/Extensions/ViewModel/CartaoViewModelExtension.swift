//
//  CartaoViewModelExtension.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 28/06/20.
//

import Foundation
extension CartaoViewModel{
    
    func setNumero(_ numero: String){
        self.castModel()?.numero = numero
    }
    
    func setVencimento(_ vencimento: String){
        self.castModel()?.vencimento = vencimento
    }
    
    func setTitular(_ titular: String){
        self.castModel()?.titular = titular
    }
    
    func setCvv(_ cvv: String){
        self.castModel()?.cvv = Int(cvv) ?? 0
    }
    
    private func castModel() -> Cartao?{
        return self.model as? Cartao
    }
    
}
