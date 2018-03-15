//
// TransacaoOnUsRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Objeto de Requisi\u00E7\u00E3o de Transa\u00E7\u00E3o On Us */
public class TransacaoOnUsRequest: JSONEncodable {

    /** N\u00FAmero Sequencial \u00DAnico que identifica a transa\u00E7\u00E3o no sistema que a originou. */
    public var nsuOrigem: String?
    /** C\u00F3digo de Processamento que identifica o Tipo da Transa\u00E7\u00E3o. */
    public var codigoProcessamento: String?
    /** Valor da transa\u00E7\u00E3o com duas casas decimais para os centavos. */
    public var valorTransacao: Double?
    /** N\u00FAmero Real do Cart\u00E3o. */
    public var numeroRealCartao: String?
    /** Data de Validade do Cart\u00E3o. Ex: AAMM */
    public var dataValidadeCartao: String?
    /** N\u00FAmero do Estabelecimento (N\u00FAmero+DV). */
    public var numeroEstabelecimento: Int?
    /** Apresenta a data e hora local da consulta yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSZ. Ex: 2000-10-31T01:30:00.000-05:00 */
    public var dataHoraTerminal: String?
    /** Apresenta a identifica\u00E7\u00E3o do terminal requisitante */
    public var terminalRequisitante: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["nsuOrigem"] = self.nsuOrigem
        nillableDictionary["codigoProcessamento"] = self.codigoProcessamento
        nillableDictionary["valorTransacao"] = self.valorTransacao
        nillableDictionary["numeroRealCartao"] = self.numeroRealCartao
        nillableDictionary["dataValidadeCartao"] = self.dataValidadeCartao
        nillableDictionary["numeroEstabelecimento"] = self.numeroEstabelecimento
        nillableDictionary["dataHoraTerminal"] = self.dataHoraTerminal
        nillableDictionary["terminalRequisitante"] = self.terminalRequisitante
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
