//
// CartaoPayUpdate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{cartao_pay_update_description}}} */
public class CartaoPayUpdate: JSONEncodable {

    public enum Status: String { 
        case Ativo = "ATIVO"
        case Inativo = "INATIVO"
        case Bloqueado = "BLOQUEADO"
    }
    
    /** {{{cartao_pay_update_status_value}}} */
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
