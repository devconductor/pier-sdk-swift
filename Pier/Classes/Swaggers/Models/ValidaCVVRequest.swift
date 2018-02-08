//
// ValidaCVVRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Representa\u00C3\u00A7\u00C3\u00A3o da requisi\u00C3\u00A7\u00C3\u00A3o de valida\u00C3\u00A7\u00C3\u00A3o do CVV. */
public class ValidaCVVRequest: JSONEncodable {

    /** C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do chave de criptografia. */
    public var idChaveCriptografia: Int?
    /** Valor de Verifica\u00C3\u00A7\u00C3\u00A3o do Cart\u00C3\u00A3o (CVV). */
    public var cvv: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["idChaveCriptografia"] = self.idChaveCriptografia
        nillableDictionary["cvv"] = self.cvv
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}