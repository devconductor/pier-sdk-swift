//
// ChaveCriptografiaRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{chave_criptografia_requisicao_descricao}}} */
public class ChaveCriptografiaRequest: JSONEncodable {

    /** {{{chave_criptografia_requisicao_id_chave_valor}}} */
    public var idChave: Int?
    /** {{{chave_criptografia_requisicao_conteudo_valor}}} */
    public var conteudo: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["idChave"] = self.idChave
        nillableDictionary["conteudo"] = self.conteudo
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
