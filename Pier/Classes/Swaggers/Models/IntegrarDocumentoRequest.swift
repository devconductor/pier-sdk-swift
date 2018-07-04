//
// IntegrarDocumentoRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{integrar_documento_request_description}}} */
public class IntegrarDocumentoRequest: JSONEncodable {

    /** {{{integrar_documento_request_id_template_value}}} */
    public var idTemplate: Int?
    /** {{{integrar_documento_request_arquivo_value}}} */
    public var arquivo: String?
    /** {{{integrar_documento_request_nome_value}}} */
    public var nome: String?
    /** {{{integrar_documento_request_propriedades_value}}} */
    public var propriedades: [PropriedadeDocumentoRequest]?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["idTemplate"] = self.idTemplate
        nillableDictionary["arquivo"] = self.arquivo
        nillableDictionary["nome"] = self.nome
        nillableDictionary["propriedades"] = self.propriedades?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
