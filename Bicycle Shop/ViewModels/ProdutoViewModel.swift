//
//  ProdutoViewModel.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 28/06/20.
//

import Foundation
import UIKit
class ProdutoViewModel: ViewModel{
    
    var model: Any?
    
    func configure(_ modeledView: ModeledView) {
        if let mv =  modeledView as? ProdutoModeledView, let model = self.model as? Produto {
            mv.nomeProdutoLabel?.text = model.nome
            mv.precoProdutoLabel?.text = model.preco?.formatCurrency()
            mv.imagemProduto?.defineImage(address: model.imagem ?? ConfigScheme.PLACEHOLDER_IMAGE_URL)
        }
    }
    
    
}
