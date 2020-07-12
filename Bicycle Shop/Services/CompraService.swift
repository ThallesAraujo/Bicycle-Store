//
//  CompraService.swift
//  Bicycle Shop
//
//  Created by Thalles Araújo on 09/07/20.
//
import Foundation
import Alamofire
import ObjectMapper

class CompraService{
    
    class func getComprasCliente(idCliente: Int, success: @escaping (_ models: [Compra]) -> Void, failure: @escaping (_ error: String) -> Void){
        
        Network.request(url: APIHelper.COMPRA.getURL([String.init(format: "%d", idCliente)]), method: .get, completion: { (response) in
            guard let statusCode = response.response?.statusCode, statusCode == 200 else {
                failure("Falha ao buscar dados")
                return
            }
            
            guard let result = response.result.value as? [String:Any], let json = result["data"] as? [String: Any], let list = json["results"] as? [[String:Any]] else{
                failure("Erro ao ler JSON")
                return
            }
            
            let myModels = Mapper<Compra>().mapArray(JSONArray: list)
            success(myModels)
        }, noNetworkCompletion: failure)
    }
    
    
    class func postCompra(compra:Compra, success : @escaping(_ created : [String:Any]) -> Void, failure : @escaping(_ error : String) -> Void) -> Void {
        
        var parameters: [String: Any] = [
            "cpfCliente": compra.cpfCliente,
            "idCliente": compra.idCliente,
            "dataHora":compra.dataHora
        ]
        
        var itensCarrinho: [[String: Any]] = []
        if let carrinho = compra.carrinho{
            for i in 0...carrinho.itens.count - 1 {
                var p: [String: Any] = [:]
                p["quantidade"] = carrinho.itens[i].quantidade
                p["subtotal"] = carrinho.itens[i].subtotal
                p["total"] = carrinho.total
                
                var produto: [String: Any] = [:]
                
                produto["id"] = carrinho.itens[i].produto?.id
                produto["imagem"] = carrinho.itens[i].produto?.imagem
                produto["preco"] = carrinho.itens[i].produto?.preco
                produto["nome"] = carrinho.itens[i].produto?.nome
                
                p["produto"] = produto
                
                itensCarrinho.append(p)
        }
        parameters["itensCarrinho"] = itensCarrinho
        
        
        Network.request(url:  APIHelper.COMPRA.getURL([String.init(format: "%d", compra.idCliente )]), method: .post, parameters: parameters, completion: {response in
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
    
    
    class func cancelarCompra(compra:Compra,success : @escaping(_ created : [String:Any]) -> Void, failure : @escaping(_ error : String) -> Void) -> Void {
    
        Network.request(url:  APIHelper.CANCELAR_COMPRA.getURL([String.init(format: "%d", compra.id)]), method: .put, completion: {response in
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

