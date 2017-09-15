//
// AtribuirAssinaturaClientePersist.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Objeto que representa a atribui\u00C3\u00A7\u00C3\u00A3o da assinatura do cliente */
public class AtribuirAssinaturaClientePersist: JSONEncodable {

    /** C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do Arquivo */
    public var idArquivo: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["idArquivo"] = self.idArquivo
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}