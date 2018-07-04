//
// ProdutoDetalhesResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{produto_detalhes_response_description}}} */
public class ProdutoDetalhesResponse: JSONEncodable {

    /** {{{produto_response_id_value}}} */
    public var id: Int?
    /** {{{produto_response_nome_value}}} */
    public var nome: String?
    /** {{{produto_response_status_value}}} */
    public var status: Int?
    /** {{{produto_response_id_fantasia_basica_value}}} */
    public var idFantasiaBasica: Int?
    /** {{{produto_detalhes_response_fantasia_basica_value}}} */
    public var fantasiaBasica: String?
    /** {{{produto_detalhes_response_uso_exterior_value}}} */
    public var usoExterior: Bool?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["nome"] = self.nome
        nillableDictionary["status"] = self.status
        nillableDictionary["idFantasiaBasica"] = self.idFantasiaBasica
        nillableDictionary["fantasiaBasica"] = self.fantasiaBasica
        nillableDictionary["usoExterior"] = self.usoExterior
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
