//
//  CadastroViewModelExtension.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 28/06/20.
//

import Foundation
extension CadastroViewModel{
    
    func setNome(_ nome: String){
        self.castModel()?.nome = nome
    }
    
    func setSobrenome(_ sobrenome: String){
        self.castModel()?.sobrenome = sobrenome
    }
    
    func setDataNascimento(_ dtNascimento: String){
        self.castModel()?.dataNascimento = dtNascimento
    }
    
    func setCpf(_ cpf: String){
        self.castModel()?.cpf = cpf
    }
    
    func setEmail(_ email: String){
        self.castModel()?.email = email
    }
    
    func setSenha(_ senha: String){
        self.castModel()?.senha = senha
    }
    
    func setRepetirSenha(_ senha: String){
        self.castModel()?.repetirSenha = senha
    }
    
    func setTelefonePrimario(_ tel: String){
        self.castModel()?.telefonePrimario = tel
    }
    
    func setTelefoneSecundario(_ tel: String){
        self.castModel()?.telefoneSecundario = tel
    }
    
    private func castModel() -> Cliente?{
        return self.model as? Cliente
    }
    
}
