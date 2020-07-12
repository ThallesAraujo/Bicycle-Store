//
//  FiltroViewModelExtension.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 28/06/20.
//

import Foundation
extension FiltroViewModel{
    
    func setCategoria(_ categoria: String){
        self.castModel()?.categoria = Categoria.init(categoria)
    }
    
    func setOrdenarPor(_ ordenacao: String){
        self.castModel()?.ordenarPor = OrdenarPor.init(ordenacao)
    }
    
    private func castModel() -> Filtro?{
        return self.model as? Filtro
    }
    
}
