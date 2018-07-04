//
// FaturaResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{fatura_response_description}}} */
public class FaturaResponse: JSONEncodable {

    public enum SituacaoProcessamento: String { 
        case Aberta = "ABERTA"
        case Fechada = "FECHADA"
        case Todas = "TODAS"
    }
    
    /** {{{fatura_response_id_conta_value}}} */
    public var idConta: Int?
    /** {{{fatura_response_situacao_processamento_value}}} */
    public var situacaoProcessamento: SituacaoProcessamento?
    /** {{{fatura_response_pagamento_efetuado_value}}} */
    public var pagamentoEfetuado: Bool?
    /** {{{fatura_response_data_vencimento_fatura_value}}} */
    public var dataVencimentoFatura: String?
    /** {{{fatura_response_data_vencimento_real_value}}} */
    public var dataVencimentoReal: String?
    /** {{{fatura_response_data_fechamento_value}}} */
    public var dataFechamento: String?
    /** {{{fatura_response_valor_total_value}}} */
    public var valorTotal: Double?
    /** {{{fatura_response_valor_pagamento_minimo_value}}} */
    public var valorPagamentoMinimo: Double?
    /** {{{fatura_response_saldo_anterior_value}}} */
    public var saldoAnterior: Double?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["idConta"] = self.idConta
        nillableDictionary["situacaoProcessamento"] = self.situacaoProcessamento?.rawValue
        nillableDictionary["pagamentoEfetuado"] = self.pagamentoEfetuado
        nillableDictionary["dataVencimentoFatura"] = self.dataVencimentoFatura
        nillableDictionary["dataVencimentoReal"] = self.dataVencimentoReal
        nillableDictionary["dataFechamento"] = self.dataFechamento
        nillableDictionary["valorTotal"] = self.valorTotal
        nillableDictionary["valorPagamentoMinimo"] = self.valorPagamentoMinimo
        nillableDictionary["saldoAnterior"] = self.saldoAnterior
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
