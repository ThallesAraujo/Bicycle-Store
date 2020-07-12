//
//  Compra.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 28/06/20.
//

import Foundation
import ObjectMapper

infix operator <-

class Compra: Mappable{
    
    var id: Int = 0
    var dataHora: Date?
    var carrinho: Carrinho?
    var cpfCliente: Int = 0
    var idCliente: Int = 0
    
    required convenience init?(map: Map) {
        self.init(map: map)
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        dataHora <- map["dataHora"]
        carrinho <- map ["carrinho"]
        cpfCliente <- map["cpfCliente"]
        idCliente <- map["idCliente"]
    }
    
}
