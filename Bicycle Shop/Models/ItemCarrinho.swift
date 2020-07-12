//
//  ItemCarrinho.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 28/06/20.
//

import Foundation
import ObjectMapper

infix operator <-

class ItemCarrinho: Mappable {
    
    var id: Int = 0
    var produto: Produto?
    var quantidade: Int?
    var subtotal: Double?
    
    required convenience init?(map: Map) {
        self.init(map: map)
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        produto <- map["produto"]
        quantidade <- map["quantidade"]
        subtotal <- map["subtotal"]
    }
    
    
    
}
