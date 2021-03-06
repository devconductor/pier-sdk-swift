//
// HistoricoTelefoneResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{historico_telefone_response_description}}} */
public class HistoricoTelefoneResponse: JSONEncodable {

    /** {{{historico_telefone_response_id_value}}} */
    public var id: Int?
    /** {{{historico_telefone_response_telefone_value}}} */
    public var telefone: String?
    /** {{{historico_telefone_response_id_tipo_telefone_value}}} */
    public var idTipoTelefone: Int?
    /** {{{historico_telefone_response_tipo_telefone_value}}} */
    public var tipoTelefone: String?
    /** {{{historico_telefone_response_data_modificacao_value}}} */
    public var dataModificacao: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["telefone"] = self.telefone
        nillableDictionary["idTipoTelefone"] = self.idTipoTelefone
        nillableDictionary["tipoTelefone"] = self.tipoTelefone
        nillableDictionary["dataModificacao"] = self.dataModificacao
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
