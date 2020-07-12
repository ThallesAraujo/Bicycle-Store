//
//  ClienteService.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 09/07/20.
//

import Foundation
import Alamofire
import ObjectMapper

class ClienteService{
    
    class func getCliente(idCliente: Int, success: @escaping (_ models: Cliente) -> Void, failure: @escaping (_ error: String) -> Void){
        
        Network.request(url: APIHelper.CLIENTE.getURL([String.init(format: "%d", idCliente)]), method: .get, completion: { (response) in
            guard let statusCode = response.response?.statusCode, statusCode == 200 else {
                failure("Falha ao buscar dados")
                return
            }
            
            guard let result = response.result.value as? [String:Any], let json = result["data"] as? [String: Any], let list = json["results"] as? [[String:Any]] else{
                failure("Erro ao ler JSON")
                return
            }
            
            let myModels = Mapper<Cliente>().map(JSON: result)
            success(myModels ?? Cliente())
        }, noNetworkCompletion: failure)
    }
    
    
    class func postCliente(cliente:Cliente, success : @escaping(_ created : [String:Any]) -> Void, failure : @escaping(_ error : String) -> Void) -> Void {
        
        var parameters: [String: Any] = [
            "nome": cliente.nome,
            "cpf": cliente.cpf,
            "dataNascimento":cliente.dataNascimento,
            "email":cliente.email,
            "senha": cliente.senha,
            "telefonePrimario": cliente.telefonePrimario,
            "telefoneSecundario": cliente.telefoneSecundario
        ]
        
       
        
        
        Network.request(url:  APIHelper.CLIENTE.getURL(), method: .post, parameters: parameters, completion: {response in
        guard let statusCode = response.response?.statusCode, statusCode == 200 else {
            failure(response.description)
            return
        }
        
        guard let result = response.result.value! as? [String:Any], let json = result as? [String: Any] else {
            failure("Erro ao concluir pedido.")
            return
        }
        
        
        success(json)
        
        
        }, noNetworkCompletion: {error in print(error)})
        
    }
    
    
}
