//
//  ProductCell.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 11/07/20.
//

import UIKit

class ProdutoCollectionViewCell: UICollectionViewCell, ProdutoModeledView{
    
    var viewModel: ViewModel?
    
    @IBOutlet weak var nomeProdutoLabel: UILabel?
    
    @IBOutlet weak var precoProdutoLabel: UILabel?
    
    @IBOutlet weak var imagemProduto: UIImageView?
    
    
    @IBAction func didTapAdicionarAoCarrinho(_ sender: Any) {
    }
    
    
}
