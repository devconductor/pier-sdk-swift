//
// CartaoEmbossingRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{cartao_embossing_request_description}}} */
public class CartaoEmbossingRequest: JSONEncodable {

    /** {{{cartao_embossing_request_id_pessoa_value}}} */
    public var idPessoa: Int?
    /** {{{cartao_embossing_request_id_tipo_plastico_value}}} */
    public var idTipoPlastico: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id_pessoa"] = self.idPessoa
        nillableDictionary["id_tipo_plastico"] = self.idTipoPlastico
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
