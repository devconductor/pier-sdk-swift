//
// EntidadeResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Objeto de Resposta da Entidade */
public class EntidadeResponse: JSONEncodable {

    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da entidade. */
    public var id: Int?
    /** Descri\u00C3\u00A7\u00C3\u00A3o da entidade. */
    public var descricao: String?
    /** Flag que indica se a entidade est\u00C3\u00A1 ativa. */
    public var flagAtivo: Bool?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["descricao"] = self.descricao
        nillableDictionary["flagAtivo"] = self.flagAtivo
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
