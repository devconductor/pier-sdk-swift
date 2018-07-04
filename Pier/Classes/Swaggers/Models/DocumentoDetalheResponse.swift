//
// DocumentoDetalheResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{documento_detalhe_response_description}}} */
public class DocumentoDetalheResponse: JSONEncodable {

    /** {{{documento_detalhe_response_id_value}}} */
    public var id: Int?
    /** {{{documento_detalhe_response_propriedade_value}}} */
    public var propriedade: String?
    /** {{{documento_detalhe_response_conteudo_value}}} */
    public var conteudo: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["propriedade"] = self.propriedade
        nillableDictionary["conteudo"] = self.conteudo
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
