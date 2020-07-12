//
//  CartaoService.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 09/07/20.
//

import Foundation
import Alamofire
import ObjectMapper
class CartaoService{
    
    class func getCartoes(idCliente: Int, success: @escaping (_ models: [Cartao]) -> Void, failure: @escaping (_ error: String) -> Void){
        
        Network.request(url: APIHelper.CARTAO.getURL([String.init(format: "%d", idCliente)]), method: .get, completion: { (response) in
            guard let statusCode = response.response?.statusCode, statusCode == 200 else {
                failure("Falha ao buscar dados")
                return
            }
            
            guard let result = response.result.value as? [String:Any], let json = result["data"] as? [String: Any], let list = json["results"] as? [[String:Any]] else{
                failure("Erro ao ler JSON")
                return
            }
            
            let myModels = Mapper<Cartao>().mapArray(JSONArray: list)
            success(myModels)
        }, noNetworkCompletion: failure)
    }
    
    
    class func postCartao(cartao:Cartao, success : @escaping(_ created : [String:Any]) -> Void, failure : @escaping(_ error : String) -> Void) -> Void {
        
        let parameters: [String: Any] = [
            "idCliente": cartao.idCliente,
            "cvv": cartao.cvv,
            "numero": cartao.numero,
            "titular": cartao.titular,
            "vencimento":cartao.vencimento
        ]
        
        Network.request(url:  APIHelper.CARTAO.getURL(), method: .post, parameters: parameters, completion: {response in
        guard let statusCode = response.response?.statusCode, statusCode == 200 else {
            failure(response.description)
            return
        }
        
        guard let result = response.result.value! as? [String:Any], let json = result as? [String: Any] else {
            failure("Erro ao cadastrar cartao.")
            return
        }
        
        
        success(json)
        
        
        }, noNetworkCompletion: {error in print(error)})
        
    }
    
    
}
