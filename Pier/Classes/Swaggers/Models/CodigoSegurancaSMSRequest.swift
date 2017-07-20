//
// CodigoSegurancaSMSRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Representa\u00C3\u00A7\u00C3\u00A3o do recurso validar c\u00C3\u00B3digo de seguran\u00C3\u00A7a. */
public class CodigoSegurancaSMSRequest: JSONEncodable {

    /** C\u00C3\u00B3digo DDD do telefone (id). */
    public var ddd: String?
    /** N\u00C3\u00BAmero do telefone. */
    public var telefone: String?
    /** Token para valida\u00C3\u00A7\u00C3\u00A3o. */
    public var codigoSeguranca: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["ddd"] = self.ddd
        nillableDictionary["telefone"] = self.telefone
        nillableDictionary["codigoSeguranca"] = self.codigoSeguranca
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
