//
//  FiltroService.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 09/07/20.
//

import Foundation
import Alamofire
import ObjectMapper

class FiltroService{
    
    class func getProdutos(filtro: Filtro, success: @escaping (_ models: [Produto]) -> Void, failure: @escaping (_ error: String) -> Void){
        
        let parameters: [String: Any] = [
            "categoria": filtro.categoria?.rawValue ?? "",
            "ordenarPor": filtro.ordenarPor?.rawValue ?? ""
        ]
        
        Network.request(url: APIHelper.FILTRO.getURL(), method: .put, parameters: parameters, completion: { (response) in
            guard let statusCode = response.response?.statusCode, statusCode == 200 else {
                failure("Falha ao buscar dados")
                return
            }
            
            guard let result = response.result.value as? [String:Any], let json = result["data"] as? [String: Any], let list = json["results"] as? [[String:Any]] else{
                failure("Erro ao ler JSON")
                return
            }
            
            let myModels = Mapper<Produto>().mapArray(JSONArray: list)
            success(myModels)
        }, noNetworkCompletion: failure)
    }
    
}
