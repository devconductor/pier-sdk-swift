//
// TransferenciaResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Objeto transferencia */
public class TransferenciaResponse: JSONEncodable {

    /** C\u00F3digo de identifica\u00E7\u00E3o da transfer\u00EAncia (id). */
    public var id: Int?
    /** Data estabelecida para ocorrer a transfer\u00EAncia. */
    public var dataTransferencia: String?
    /** C\u00F3digo de identifica\u00E7\u00E3o da conta em que o valor ser\u00E1 debitado para a transfer\u00EAncia. (id). */
    public var idContaOrigem: Int?
    /** C\u00F3digo de identifica\u00E7\u00E3o da conta em que o valor ser\u00E1 creditado para a transfer\u00EAncia. (id). */
    public var idContaDestino: Int?
    /** Valor estabelecido para ser transferido. */
    public var valorTransferencia: Double?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["dataTransferencia"] = self.dataTransferencia
        nillableDictionary["idContaOrigem"] = self.idContaOrigem
        nillableDictionary["idContaDestino"] = self.idContaDestino
        nillableDictionary["valorTransferencia"] = self.valorTransferencia
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
