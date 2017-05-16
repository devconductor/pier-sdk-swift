//
// Dispositivo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Dispositivo Mobile */
public class Dispositivo: JSONEncodable {

    /** Identificador do dispositivo. */
    public var id: Int?
    /** Token do dispositivo. */
    public var token: String?
    /** Identificador da Aplica\u00C3\u00A7\u00C3\u00A3o. */
    public var idAplicacaoMobile: Int?
    /** Identificador do usu\u00C3\u00A1rio. */
    public var idUsuario: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["token"] = self.token
        nillableDictionary["idAplicacaoMobile"] = self.idAplicacaoMobile
        nillableDictionary["idUsuario"] = self.idUsuario
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
