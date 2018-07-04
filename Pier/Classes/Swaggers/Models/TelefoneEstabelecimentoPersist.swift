//
// TelefoneEstabelecimentoPersist.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{telefone_estabelecimento_persist_description}}} */
public class TelefoneEstabelecimentoPersist: JSONEncodable {

    /** {{{telefone_estabelecimento_persist_id_estabelecimento_value}}} */
    public var idEstabelecimento: Int?
    /** {{{telefone_estabelecimento_persist_ddd_value}}} */
    public var ddd: String?
    /** {{{telefone_estabelecimento_persist_telefone_value}}} */
    public var telefone: String?
    /** {{{telefone_estabelecimento_persist_ramal_value}}} */
    public var ramal: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["idEstabelecimento"] = self.idEstabelecimento
        nillableDictionary["ddd"] = self.ddd
        nillableDictionary["telefone"] = self.telefone
        nillableDictionary["ramal"] = self.ramal
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
