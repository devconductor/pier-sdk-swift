//
// TelefoneResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{telefone_response_description}}} */
public class TelefoneResponse: JSONEncodable {

    /** {{{telefone_response_id_value}}} */
    public var id: Int?
    /** {{{telefone_response_id_tipo_telefone_value}}} */
    public var idTipoTelefone: Int?
    /** {{{telefone_response_id_pessoa_value}}} */
    public var idPessoa: Int?
    /** {{{telefone_response_ddd_value}}} */
    public var ddd: String?
    /** {{{telefone_response_telefone_value}}} */
    public var telefone: String?
    /** {{{telefone_response_ramal_value}}} */
    public var ramal: String?
    /** {{{telefone_response_status_value}}} */
    public var status: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["idTipoTelefone"] = self.idTipoTelefone
        nillableDictionary["idPessoa"] = self.idPessoa
        nillableDictionary["ddd"] = self.ddd
        nillableDictionary["telefone"] = self.telefone
        nillableDictionary["ramal"] = self.ramal
        nillableDictionary["status"] = self.status
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
