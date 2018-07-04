//
// DocumentoIntegracaoResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{documento_integracao_response_description}}} */
public class DocumentoIntegracaoResponse: JSONEncodable {

    /** {{{documento_integracao_response_id_value}}} */
    public var id: Int?
    /** {{{documento_integracao_response_id_template_value}}} */
    public var idTemplate: Int?
    /** {{{documento_integracao_response_nome_value}}} */
    public var nome: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["idTemplate"] = self.idTemplate
        nillableDictionary["nome"] = self.nome
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
