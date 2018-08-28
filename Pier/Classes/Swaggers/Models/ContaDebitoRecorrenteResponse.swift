//
// ContaDebitoRecorrenteResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{conta_debito_recorrente_response_description}}} */
public class ContaDebitoRecorrenteResponse: JSONEncodable {

    /** {{{conta_debito_recorrente_response_ativo_value}}} */
    public var ativo: Bool?
    /** {{{conta_debito_recorrente_response_data_hora_fim_value}}} */
    public var dataHoraFim: String?
    /** {{{conta_debito_recorrente_response_data_hora_inicio_value}}} */
    public var dataHoraInicio: String?
    /** {{{conta_debito_recorrente_response_data_hora_ultimo_pagamento_value}}} */
    public var dataHoraUltimoPagamento: String?
    /** {{{conta_debito_recorrente_response_descricao_value}}} */
    public var descricao: String?
    /** {{{conta_debito_recorrente_response_id_conta_value}}} */
    public var idConta: Int?
    /** {{{conta_debito_recorrente_response_id_conta_debito_recorrente_value}}} */
    public var idContaDebitoRecorrente: Int?
    /** {{{conta_debito_recorrente_response_id_tipo_debito_recorrente_value}}} */
    public var idTipoDebitoRecorrente: Int?
    /** {{{conta_debito_recorrente_response_id_usuario_value}}} */
    public var idUsuario: Int?
    /** {{{conta_debito_recorrente_response_id_login_value}}} */
    public var login: String?
    /** {{{conta_debito_recorrente_response_num_parcelas_value}}} */
    public var numeroParcelas: Int?
    /** {{{conta_debito_recorrente_response_origem_value}}} */
    public var origem: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["ativo"] = self.ativo
        nillableDictionary["dataHoraFim"] = self.dataHoraFim
        nillableDictionary["dataHoraInicio"] = self.dataHoraInicio
        nillableDictionary["dataHoraUltimoPagamento"] = self.dataHoraUltimoPagamento
        nillableDictionary["descricao"] = self.descricao
        nillableDictionary["idConta"] = self.idConta
        nillableDictionary["idContaDebitoRecorrente"] = self.idContaDebitoRecorrente
        nillableDictionary["idTipoDebitoRecorrente"] = self.idTipoDebitoRecorrente
        nillableDictionary["idUsuario"] = self.idUsuario
        nillableDictionary["login"] = self.login
        nillableDictionary["numeroParcelas"] = self.numeroParcelas
        nillableDictionary["origem"] = self.origem
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}