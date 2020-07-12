//
//  ItemCarrinhoViewModel.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 28/06/20.
//

import Foundation
class ItemCarrinhoViewModel: ViewModel{
    
    var model: Any?
    
    func configure(_ modeledView: ModeledView) {
        if let mv =  modeledView as? ItemCarrinhoModeledView, let model = self.model as? ItemCarrinho {
            mv.nomeProdutoLabel.text = model.produto?.nome
            mv.precoProdutoLabel.text = model.produto?.preco?.formatCurrency()
            mv.imagemProduto.defineImage(address: model.produto?.imagem ?? ConfigScheme.PLACEHOLDER_IMAGE_URL)
            mv.quantidadeLabel.text = "\(model.quantidade ?? 0)"
        }
    }
    
    
    
    
}
