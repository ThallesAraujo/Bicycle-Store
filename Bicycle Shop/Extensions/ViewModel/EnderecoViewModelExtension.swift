//
//  EnderecoViewModelExtension.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 28/06/20.
//

import Foundation
extension EnderecoViewModel{
    
    func setCep(_ cep: String){
        self.castModel()?.cep = cep
    }
    
    func setLogradouro(_ logradouro: String){
        self.castModel()?.logradouro = logradouro
    }
    
    func setNumero(_ numero: String){
        self.castModel()?.numero = Int(numero) ?? 0
    }
    
    func setBairro(_ bairro: String){
        self.castModel()?.bairro = bairro
    }
    
    func setCidade(_ cidade: String){
        self.castModel()?.cidade = cidade
    }
    
    func setEstado(_ estado: String){
        self.castModel()?.estado = estado
    }
    
    func setComplemento(_ complemento: String){
        self.castModel()?.complemento = complemento
    }
    
    private func castModel () -> Endereco? {
        return self.model as? Endereco
    }
    
}
