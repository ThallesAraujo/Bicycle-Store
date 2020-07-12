//
//  Categoria.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 28/06/20.
//

import Foundation
enum Categoria: String, CaseIterable{
    
    case todas = "Todas as Categorias"
    case equipamentoProtecao = "Equipamentos de Proteção"
    case bicicletas = "Bicicletas"
    case skates = "Skates"
    case patins = "Patins"
    case garrafasESqueezes = "Garrafas e Squeezes"
    case vestimentas = "Vestimentas"
    case outros = "Outros"
    
    init(_ categoria: String){
        switch categoria {
        case "Todas as Categorias":
            self = .todas
        case "Equipamentos de Proteção":
            self = .equipamentoProtecao
        case "Bicicletas":
            self = .bicicletas
        case "Skates":
            self = .skates
        case "Patins":
            self = .patins
        case "Garrafas e Squeezes":
            self = .garrafasESqueezes
        case "Vestimentas":
            self = .vestimentas
        default:
            self = .outros
        }
    }
    
}
