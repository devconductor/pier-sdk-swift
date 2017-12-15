//
// PlanoParcelamentoTransferenciaCreditoContaBancariaRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Transfer\u00C3\u00AAncia cr\u00C3\u00A9dito conta banc\u00C3\u00A1ria request */
public class PlanoParcelamentoTransferenciaCreditoContaBancariaRequest: JSONEncodable {

    /** N\u00C3\u00BAmero Sequencial \u00C3\u009Anico que identifica a transa\u00C3\u00A7\u00C3\u00A3o no sistema que a originou. */
    public var nsuOrigem: String?
    /** Valor da transa\u00C3\u00A7\u00C3\u00A3o com duas casas decimais para os centavos. */
    public var valorTransacao: Double?
    /** N\u00C3\u00BAmero Real do Cart\u00C3\u00A3o. */
    public var numeroRealCartao: String?
    /** Data de Validade do Cart\u00C3\u00A3o. Ex: AAMM */
    public var dataValidadeCartao: String?
    /** Representa o N\u00C3\u00BAmero de Meses concedido como car\u00C3\u00AAncia. */
    public var numeroMesesCarencia: Int?
    /** N\u00C3\u00BAmero do Estabelecimento (N\u00C3\u00BAmero+DV). */
    public var numeroEstabelecimento: Int?
    /** Apresenta a data e hora local da consulta yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSZ. Ex: 2000-10-31T01:30:00.000-05:00 */
    public var dataHoraTerminal: String?
    /** Apresenta a identifica\u00C3\u00A7\u00C3\u00A3o do terminal requisitante */
    public var terminalRequisitante: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["nsuOrigem"] = self.nsuOrigem
        nillableDictionary["valorTransacao"] = self.valorTransacao
        nillableDictionary["numeroRealCartao"] = self.numeroRealCartao
        nillableDictionary["dataValidadeCartao"] = self.dataValidadeCartao
        nillableDictionary["numeroMesesCarencia"] = self.numeroMesesCarencia
        nillableDictionary["numeroEstabelecimento"] = self.numeroEstabelecimento
        nillableDictionary["dataHoraTerminal"] = self.dataHoraTerminal
        nillableDictionary["terminalRequisitante"] = self.terminalRequisitante
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
