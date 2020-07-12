//
//  ProdutoService.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 06/07/20.
//

import Foundation
import Alamofire
import ObjectMapper

class ProdutoService{
    
    class func getProdutos(success: @escaping (_ models: [Produto]) -> Void, failure: @escaping (_ error: String) -> Void){
        
        Network.request(url: APIHelper.PRODUTOS.getURL(), method: .get, completion: { (response) in
            guard let statusCode = response.response?.statusCode, statusCode == 200 else {
                failure("Falha ao buscar dados")
                return
            }
            
            guard let list = response.result.value as? [[String:Any]] else{
                failure("Erro ao ler JSON")
                return
            }
            
            let myModels = Mapper<Produto>().mapArray(JSONArray: list)
            success(myModels)
        }, noNetworkCompletion: failure)
    }
}
