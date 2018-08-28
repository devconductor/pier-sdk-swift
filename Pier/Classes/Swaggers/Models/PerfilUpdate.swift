//
// PerfilUpdate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{perfil_update_object_description}}} */
public class PerfilUpdate: JSONEncodable {

    /** {{{perfil_update_nome_value}}} */
    public var nome: String?
    /** {{{perfil_update_permissoes_value}}} */
    public var permissoes: [ReferenciaIdPersist]?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["nome"] = self.nome
        nillableDictionary["permissoes"] = self.permissoes?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}