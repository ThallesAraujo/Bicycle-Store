//
//  OrdenarPor.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 28/06/20.
//

import Foundation
enum OrdenarPor: String, CaseIterable{
    
    case menorPreco = "Maior Preço"
    case maiorPreco = "Menor Preço"
    
    init(_ ordenacao: String){
        switch ordenacao {
        case "maiorPreco":
            self = .maiorPreco
        default:
            self = .menorPreco
        }
    }
    
}
