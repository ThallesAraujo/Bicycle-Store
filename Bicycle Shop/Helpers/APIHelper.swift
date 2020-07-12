//
//  APIHelper.swift
//  swift-issues
//
//  Created by Thalles Araújo on 26/01/20.
//  Copyright © 2020 Thalles Araújo. All rights reserved.
//

import Foundation
import var CommonCrypto.CC_MD5_DIGEST_LENGTH
import func CommonCrypto.CC_MD5
import typealias CommonCrypto.CC_LONG
enum APIHelper: String{
    
    case PRODUTOS =  "/produtos"
   
    case CARRINHO =  "/carrinho/%@"
    
    case ENDERECO =  "/endereco/%@"
    
    case CLIENTE = "/cliente/%@"
    
    case POST_CLIENTE = "/cliente"
    
    case FILTRO = "/filtrar"
    
    case CARTAO = "/cartao/%@"
    
    case COMPRA = "/compra/%@"
    
    case CANCELAR_COMPRA = "/compra/%@/cancelarw"
   
    func getURL(_ parameters: [String] = []) -> URL {
        let host = ConfigScheme.API_URL //Replace for variables defined in ConfigScheme
        
        
        var service = self.rawValue
        if parameters.count > 0 {
            service = String(format: self.rawValue, arguments: parameters)
        }
        
        //refactor: use template string
        let urlString = host + service //+any_necessary_parameter
       
        return URL(string: urlString)!
    }
    
    
    
}
