//
// StatusOportunidadeAUDResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{status_oportunidade_a_u_d_response_description}}} */
public class StatusOportunidadeAUDResponse: JSONEncodable {

    /** {{{status_oportunidade_a_u_d_response_rev_value}}} */
    public var rev: Int?
    /** {{{status_oportunidade_a_u_d_response_rev_type_value}}} */
    public var revType: Int?
    /** {{{status_oportunidade_a_u_d_response_rev_date_value}}} */
    public var revDate: String?
    /** {{{status_oportunidade_a_u_d_response_id_value}}} */
    public var id: Int?
    /** {{{status_oportunidade_a_u_d_response_id_tipo_oportunidade_value}}} */
    public var idTipoOportunidade: Int?
    /** {{{status_oportunidade_a_u_d_response_nome_value}}} */
    public var nome: String?
    /** {{{status_oportunidade_a_u_d_response_descricao_value}}} */
    public var descricao: String?
    /** {{{status_oportunidade_a_u_d_response_flag_ativo_value}}} */
    public var flagAtivo: Bool?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["rev"] = self.rev
        nillableDictionary["revType"] = self.revType
        nillableDictionary["revDate"] = self.revDate
        nillableDictionary["id"] = self.id
        nillableDictionary["idTipoOportunidade"] = self.idTipoOportunidade
        nillableDictionary["nome"] = self.nome
        nillableDictionary["descricao"] = self.descricao
        nillableDictionary["flagAtivo"] = self.flagAtivo
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
