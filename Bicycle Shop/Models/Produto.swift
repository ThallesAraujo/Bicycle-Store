//
//  Produto.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 28/06/20.
//

import Foundation
import ObjectMapper

infix operator <-

class Produto: Mappable {
    
    var id: Int = 0
    var preco: Double?
    var nome: String = ""
    var imagem: String?
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        nome <- map["nome"]
        preco <- map["preco"]
        imagem <- map["imagem"]
    }
    
    
    
}
