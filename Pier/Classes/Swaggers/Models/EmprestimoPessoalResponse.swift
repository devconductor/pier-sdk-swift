//
// EmprestimoPessoalResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Resposta do recurso de simular empr\u00C3\u00A9stimos/financiamentos */
public class EmprestimoPessoalResponse: JSONEncodable {

    public var planosParcelamentos: [PlanoParcelamentoEmprestimoResponse]?
    /** Valor solicitado do empr\u00C3\u00A9stimo/financiamento */
    public var valorSolicitado: Double?
    /** Valor total do empr\u00C3\u00A9stimo/financiamento */
    public var valorTotal: Double?
    /** Sistema para amortiza\u00C3\u00A7\u00C3\u00A3o do valor das parcelas */
    public var sistemaAmortizacao: String?
    /** Per\u00C3\u00ADodo de aplica da taxa de juros */
    public var periodoTaxa: String?
    /** Data da primeira parcela do empr\u00C3\u00A9stimo/financiamento */
    public var dataPrimeiraParcela: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["planosParcelamentos"] = self.planosParcelamentos?.encodeToJSON()
        nillableDictionary["valorSolicitado"] = self.valorSolicitado
        nillableDictionary["valorTotal"] = self.valorTotal
        nillableDictionary["sistemaAmortizacao"] = self.sistemaAmortizacao
        nillableDictionary["periodoTaxa"] = self.periodoTaxa
        nillableDictionary["dataPrimeiraParcela"] = self.dataPrimeiraParcela
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}