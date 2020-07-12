//
//  ProdutoRequestHandler.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 11/07/20.
//

import Foundation
import UIKit

class ProdutoRequestHandler: RequestHandler{
    
    func fetchData(forViewController vc: UIViewController, completion: @escaping () -> Void) {
        if let vc = vc as? MainVC{
            
            ProdutoService.getProdutos { (produtos) in
                vc.produtos = self.getViewModelArray(produtos: produtos)
                completion()
            } failure: { (error) in
                print(error)
                completion()
            }

            
        }
    }
    
    
    
    private func getViewModelArray(produtos: [Produto]) -> [ProdutoViewModel]{
        
        var viewModels: [ProdutoViewModel] = []
        
        for i in 0...produtos.count-1{
            var vm = ProdutoViewModel()
            vm.model = produtos[i]
            viewModels.append(vm)
        }
        
        return viewModels
    }
    
}
