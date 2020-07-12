//
//  Cliente.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 28/06/20.
//

import Foundation
import ObjectMapper

infix operator <-

class Cliente: Mappable{
    
    
    var id: Int = 0
    var nome: String = ""
    var sobrenome: String = ""
    var dataNascimento: String = ""
    var cpf: String = ""
    var email: String = ""
    var senha: String = ""
    var repetirSenha: String = ""
    var telefonePrimario: String = ""
    var telefoneSecundario: String = ""
    
    
    required convenience init?(map: Map) {
        self.init(map: map)
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        nome <- map["nome"]
        sobrenome <- map["sobrenome"]
        dataNascimento <- map["dataNascimento"]
        cpf <- map["cpf"]
        email <- map["email"]
        senha <- map["senha"]
        telefonePrimario <- map["telefonePrimario"]
        telefoneSecundario <- map["telefoneSecundario"]
    }
    
}
