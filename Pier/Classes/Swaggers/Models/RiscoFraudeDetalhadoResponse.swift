//
// RiscoFraudeDetalhadoResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{risco_fraude_detalhado_response_description}}} */
public class RiscoFraudeDetalhadoResponse: JSONEncodable {

    /** {{{risco_fraude_detalhado_response_id_value}}} */
    public var id: Int?
    /** {{{risco_fraude_detalhado_response_id_tipo_resolucao_value}}} */
    public var idTipoResolucao: Int?
    /** {{{risco_fraude_detalhado_response_descricao_tipo_resolucao_value}}} */
    public var descricaoTipoResolucao: String?
    /** {{{risco_fraude_detalhado_response_flag_alto_risco_value}}} */
    public var flagAltoRisco: Bool?
    /** {{{risco_fraude_detalhado_response_id_conta_value}}} */
    public var idConta: Int?
    /** {{{risco_fraude_detalhado_response_id_cartao_value}}} */
    public var idCartao: Int?
    /** {{{risco_fraude_detalhado_response_id_produto_value}}} */
    public var idProduto: Int?
    /** {{{risco_fraude_detalhado_response_id_transacao_value}}} */
    public var idTransacao: Int?
    /** {{{risco_fraude_detalhado_response_data_transacao_value}}} */
    public var dataTransacao: String?
    /** {{{risco_fraude_detalhado_response_valor_transacao_value}}} */
    public var valorTransacao: Double?
    /** {{{risco_fraude_detalhado_response_codigo_moeda_origem_value}}} */
    public var codigoMoedaOrigem: String?
    /** {{{risco_fraude_detalhado_response_valor_origem_value}}} */
    public var valorOrigem: Double?
    /** {{{risco_fraude_detalhado_response_codigo_moeda_destino_value}}} */
    public var codigoMoedaDestino: String?
    /** {{{risco_fraude_detalhado_response_valor_destino_value}}} */
    public var valorDestino: Double?
    /** {{{risco_fraude_detalhado_response_nome_estabelecimento_value}}} */
    public var nomeEstabelecimento: String?
    /** {{{risco_fraude_detalhado_response_id_pais_value}}} */
    public var idPais: String?
    /** {{{risco_fraude_detalhado_response_codigo_resposta_autorizador_value}}} */
    public var codigoRespostaAutorizador: String?
    /** {{{risco_fraude_detalhado_response_descricao_resposta_autorizador_value}}} */
    public var descricaoRespostaAutorizador: String?
    /** {{{risco_fraude_detalhado_response_codigo_resposta_fraude_value}}} */
    public var codigoRespostaFraude: String?
    /** {{{risco_fraude_detalhado_response_descricao_resposta_fraude_value}}} */
    public var descricaoRespostaFraude: String?
    /** {{{risco_fraude_detalhado_response_origem_transacao_value}}} */
    public var origemTransacao: String?
    /** {{{risco_fraude_detalhado_response_codigo_modo_entrada_terminal_value}}} */
    public var codigoModoEntradaTerminal: String?
    /** {{{risco_fraude_detalhado_response_descricao_modo_entrada_terminal_value}}} */
    public var descricaoModoEntradaTerminal: String?
    /** {{{risco_fraude_detalhado_response_cpf_value}}} */
    public var cpf: String?
    /** {{{risco_fraude_detalhado_response_cnpj_value}}} */
    public var cnpj: String?
    /** {{{risco_fraude_detalhado_response_email_value}}} */
    public var email: String?
    /** {{{risco_fraude_detalhado_response_telefones_value}}} */
    public var telefones: [TelefoneResponse]?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["idTipoResolucao"] = self.idTipoResolucao
        nillableDictionary["descricaoTipoResolucao"] = self.descricaoTipoResolucao
        nillableDictionary["flagAltoRisco"] = self.flagAltoRisco
        nillableDictionary["idConta"] = self.idConta
        nillableDictionary["idCartao"] = self.idCartao
        nillableDictionary["idProduto"] = self.idProduto
        nillableDictionary["idTransacao"] = self.idTransacao
        nillableDictionary["dataTransacao"] = self.dataTransacao
        nillableDictionary["valorTransacao"] = self.valorTransacao
        nillableDictionary["codigoMoedaOrigem"] = self.codigoMoedaOrigem
        nillableDictionary["valorOrigem"] = self.valorOrigem
        nillableDictionary["codigoMoedaDestino"] = self.codigoMoedaDestino
        nillableDictionary["valorDestino"] = self.valorDestino
        nillableDictionary["nomeEstabelecimento"] = self.nomeEstabelecimento
        nillableDictionary["idPais"] = self.idPais
        nillableDictionary["codigoRespostaAutorizador"] = self.codigoRespostaAutorizador
        nillableDictionary["descricaoRespostaAutorizador"] = self.descricaoRespostaAutorizador
        nillableDictionary["codigoRespostaFraude"] = self.codigoRespostaFraude
        nillableDictionary["descricaoRespostaFraude"] = self.descricaoRespostaFraude
        nillableDictionary["origemTransacao"] = self.origemTransacao
        nillableDictionary["codigoModoEntradaTerminal"] = self.codigoModoEntradaTerminal
        nillableDictionary["descricaoModoEntradaTerminal"] = self.descricaoModoEntradaTerminal
        nillableDictionary["cpf"] = self.cpf
        nillableDictionary["cnpj"] = self.cnpj
        nillableDictionary["email"] = self.email
        nillableDictionary["telefones"] = self.telefones?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
