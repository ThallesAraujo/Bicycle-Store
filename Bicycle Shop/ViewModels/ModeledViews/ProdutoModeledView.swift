//
//  ProdutoModeledView.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 28/06/20.
//

import Foundation
import UIKit

protocol ProdutoModeledView: ModeledView{
    
    var nomeProdutoLabel: UILabel? { get set }
    var precoProdutoLabel: UILabel? { get set }
    var imagemProduto: UIImageView? { get set }
    
}
