//
//  FiltroViewModel.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 28/06/20.
//

import Foundation
import UIKit
class FiltroViewModel: ViewModel{
    
    var model: Any?
    
    func configure(_ modeledView: ModeledView) {
        if let mv = modeledView as? FiltroModeledView{
            
            let ordenarPorDataSource = CustomSelectDelegate(pickerView: mv.ordenarPorSelect)
            ordenarPorDataSource.data = OrdenarPor.allCases.map({op in return op.rawValue})
            ordenarPorDataSource.didTapOption = self.setOrdenarPor
            
            let categoriaDataSource = CustomSelectDelegate(pickerView: mv.categoriaSelect)
            categoriaDataSource.data = Categoria.allCases.map({cat in return cat.rawValue})
            categoriaDataSource.didTapOption = self.setCategoria
        }
    }
    
    
}
