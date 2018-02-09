//
// TransferenciaCreditoContaBancariaPersist.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Transfer\u00C3\u00AAncia de cr\u00C3\u00A9dito para conta banc\u00C3\u00A1ria */
public class TransferenciaCreditoContaBancariaPersist: JSONEncodable {

    /** Representa o N\u00C3\u00BAmero Sequencial \u00C3\u009Anico que identifica a transa\u00C3\u00A7\u00C3\u00A3o no sistema que a originou. */
    public var nsuOrigem: Int?
    /** Representa o Identificador do Cartao. */
    public var idCartao: Int?
    /** Representa o Identificador da conta banc\u00C3\u00A1ria. */
    public var idContaBancaria: Int?
    /** Representa o Valor da transfer\u00C3\u00AAncia. */
    public var valor: Double?
    /** Representa o N\u00C3\u00BAmero de Parcelas pelo qual o valor da transfer\u00C3\u00AAncia ser\u00C3\u00A1 dividido. */
    public var numeroParcelas: Int?
    /** Representa o N\u00C3\u00BAmero de Meses concedido como car\u00C3\u00AAncia. */
    public var numeroMesesCarencia: Int?
    /** Representa a Data e hora do terminal requisitante. */
    public var dataHoraTerminal: String?
    /** Representa a identifica\u00C3\u00A7\u00C3\u00A3o do terminal requisitante. */
    public var terminalRequisitante: String?
    /** Representa a identifica\u00C3\u00A7\u00C3\u00A3o do n\u00C3\u00BAmero do estabelecimento. */
    public var numeroEstabelecimento: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["nsuOrigem"] = self.nsuOrigem
        nillableDictionary["idCartao"] = self.idCartao
        nillableDictionary["idContaBancaria"] = self.idContaBancaria
        nillableDictionary["valor"] = self.valor
        nillableDictionary["numeroParcelas"] = self.numeroParcelas
        nillableDictionary["numeroMesesCarencia"] = self.numeroMesesCarencia
        nillableDictionary["dataHoraTerminal"] = self.dataHoraTerminal
        nillableDictionary["terminalRequisitante"] = self.terminalRequisitante
        nillableDictionary["numeroEstabelecimento"] = self.numeroEstabelecimento
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
