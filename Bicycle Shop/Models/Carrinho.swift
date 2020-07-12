//
//  Carrinho.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 28/06/20.
//

import Foundation
import ObjectMapper
infix operator <-

class Carrinho: Mappable{
    
    var id: Int = 0
    var itens: [ItemCarrinho] = []
    var total: Double?
    var idCliente: Int = 0
    
    required convenience init?(map: Map) {
        self.init(map: map)
    }
    
    
    func mapping(map: Map) {
        id <- map["id"]
        idCliente <- map["idCliente"]
        itens <- map["itens"]
        total <- map["total"]
    }
    
    
}
