//
// ConsultarExtratoContaResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class ConsultarExtratoContaResponse: JSONEncodable {

    public var codigoRetorno: Int?
    public var comprasNacionais: Double?
    public var cpf: String?
    public var creditosNacionais: Double?
    public var dataVencimento: String?
    public var debitosNacionais: Double?
    public var descricaoRetorno: String?
    public var extrato: [ExtratoResponse]?
    public var idCartao: Int?
    public var idConta: Int?
    public var multa: Double?
    public var pagamentos: Double?
    public var saldoAtualFinal: Double?
    public var saldoExtratoAnterior: Double?
    public var tarifasNacionais: Double?
    public var valorMinimoExtrato: Double?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["codigoRetorno"] = self.codigoRetorno
        nillableDictionary["comprasNacionais"] = self.comprasNacionais
        nillableDictionary["cpf"] = self.cpf
        nillableDictionary["creditosNacionais"] = self.creditosNacionais
        nillableDictionary["dataVencimento"] = self.dataVencimento
        nillableDictionary["debitosNacionais"] = self.debitosNacionais
        nillableDictionary["descricaoRetorno"] = self.descricaoRetorno
        nillableDictionary["extrato"] = self.extrato?.encodeToJSON()
        nillableDictionary["idCartao"] = self.idCartao
        nillableDictionary["idConta"] = self.idConta
        nillableDictionary["multa"] = self.multa
        nillableDictionary["pagamentos"] = self.pagamentos
        nillableDictionary["saldoAtualFinal"] = self.saldoAtualFinal
        nillableDictionary["saldoExtratoAnterior"] = self.saldoExtratoAnterior
        nillableDictionary["tarifasNacionais"] = self.tarifasNacionais
        nillableDictionary["valorMinimoExtrato"] = self.valorMinimoExtrato
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
