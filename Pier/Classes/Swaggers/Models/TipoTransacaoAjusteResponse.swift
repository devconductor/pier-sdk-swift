//
// TipoTransacaoAjusteResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{tipo_ajuste_response_description}}} */
public class TipoTransacaoAjusteResponse: JSONEncodable {

    /** {{{tipo_transacao_ajuste_response_id_value}}} */
    public var id: Int?
    /** {{{tipo_transacao_ajuste_response_descricao_value}}} */
    public var descricao: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["descricao"] = self.descricao
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
