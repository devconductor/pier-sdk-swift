//
// CartaoPayUpdate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Represneta\u00E7\u00E3o do recurso atualizar cart\u00E3o */
public class CartaoPayUpdate: JSONEncodable {

    public enum Status: String { 
        case Ativo = "ATIVO"
        case Inativo = "INATIVO"
        case Bloqueado = "BLOQUEADO"
    }
    
    /** Status do cart\u00E3o */
    public var status: Status?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["status"] = self.status?.rawValue
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
