//
// BeneficioPagamentoAtrasoResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class BeneficioPagamentoAtrasoResponse: JSONEncodable {

    /** Data m\u00E1xima para pagamento da fatura em atraso para receber o benef\u00EDcio de isen\u00E7\u00E3o total no pagamento de multa, encargos, mora e IOF. */
    public var dataBeneficio: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["dataBeneficio"] = self.dataBeneficio
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
