//
//  Cartao.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 28/06/20.
//

import Foundation
import ObjectMapper

infix operator <-

class Cartao: Mappable{
    
    
    var id: Int = 0
    var idCliente: Int = 0
    var numero: String = ""
    var vencimento: String = ""
    var titular: String = ""
    var cvv: Int = 0
    
    required convenience init?(map: Map) {
        self.init(map: map)
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        idCliente <- map["idCliente"]
        numero <- map["numero"]
        vencimento <- map["vencimento"]
        titular <- map["titular"]
        cvv <- map["cvv"]
    }
    
}
