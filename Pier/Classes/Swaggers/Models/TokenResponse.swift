//
// TokenResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{token_response_description}}} */
public class TokenResponse: JSONEncodable {

    public enum Status: String { 
        case Active = "ACTIVE"
        case Revoked = "REVOKED"
        case Deleted = "DELETED"
    }
    
    /** {{{token_dto_id_value}}} */
    public var id: Int?
    /** {{{token_dto_base_value}}} */
    public var base: Int?
    /** {{{token_dto_owner_value}}} */
    public var owner: String?
    /** {{{token_dto_status_value}}} */
    public var status: Status?
    /** {{{token_dto_criado_por_value}}} */
    public var criadoPor: String?
    /** {{{token_dto_data_criacao_value}}} */
    public var dataCriacao: String?
    /** {{{token_dto_alterado_por_value}}} */
    public var alteradoPor: String?
    /** {{{token_dto_data_modificacao_value}}} */
    public var dataModificacao: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["base"] = self.base
        nillableDictionary["owner"] = self.owner
        nillableDictionary["status"] = self.status?.rawValue
        nillableDictionary["criadoPor"] = self.criadoPor
        nillableDictionary["dataCriacao"] = self.dataCriacao
        nillableDictionary["alteradoPor"] = self.alteradoPor
        nillableDictionary["dataModificacao"] = self.dataModificacao
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
