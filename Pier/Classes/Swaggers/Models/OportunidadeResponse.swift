//
// OportunidadeResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{oportunidade_response_description}}} */
public class OportunidadeResponse: JSONEncodable {

    /** {{{oportunidade_response_id_value}}} */
    public var id: Int?
    /** {{{oportunidade_response_id_tipo_oportunidade_value}}} */
    public var idTipoOportunidade: Int?
    /** {{{oportunidade_response_id_status_oportunidade_value}}} */
    public var idStatusOportunidade: Int?
    /** {{{oportunidade_response_data_cadastro_value}}} */
    public var dataCadastro: String?
    /** {{{oportunidade_response_data_atualizacao_value}}} */
    public var dataAtualizacao: String?
    /** {{{oportunidade_response_numero_receita_federal_value}}} */
    public var numeroReceitaFederal: String?
    /** {{{oportunidade_response_data_inicio_vigencia_value}}} */
    public var dataInicioVigencia: String?
    /** {{{oportunidade_response_data_fim_vigencia_value}}} */
    public var dataFimVigencia: String?
    /** {{{oportunidade_response_flag_ativo_value}}} */
    public var flagAtivo: Bool?
    /** {{{oportunidade_response_detalhes_value}}} */
    public var detalhes: [DetalheOportunidadeResponse]?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["idTipoOportunidade"] = self.idTipoOportunidade
        nillableDictionary["idStatusOportunidade"] = self.idStatusOportunidade
        nillableDictionary["dataCadastro"] = self.dataCadastro
        nillableDictionary["dataAtualizacao"] = self.dataAtualizacao
        nillableDictionary["numeroReceitaFederal"] = self.numeroReceitaFederal
        nillableDictionary["dataInicioVigencia"] = self.dataInicioVigencia
        nillableDictionary["dataFimVigencia"] = self.dataFimVigencia
        nillableDictionary["flagAtivo"] = self.flagAtivo
        nillableDictionary["detalhes"] = self.detalhes?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
