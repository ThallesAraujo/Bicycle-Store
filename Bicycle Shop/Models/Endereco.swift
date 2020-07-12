//
//  Endereco.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 28/06/20.
//

import Foundation
import ObjectMapper

infix operator <-

class Endereco: Mappable {
    
    var id: Int = 0
    var cep: String = ""
    var logradouro: String = ""
    var numero: Int = 0
    var bairro: String = ""
    var cidade: String = ""
    var estado: String = ""
    var complemento: String = ""
    
    required convenience init?(map: Map) {
        self.init(map: map)
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        cep <- map["cep"]
        logradouro <- map["logradouro"]
        numero <- map["numero"]
        bairro <- map["bairro"]
        cidade <- map["cidade"]
        estado <- map["estado"]
        complemento <- map["complemento"]
    }
    
    
    
}

