//
// DispositivoPersist.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Objeto Dispositivo */
public class DispositivoPersist: JSONEncodable {

    /** Apresenta o token do dispositivo. */
    public var token: String?
    /** Apresenta o identificador da aplica\u00C3\u00A7\u00C3\u00A3o. */
    public var idAplicacaoMobile: Int?
    /** Apresenta o identificador do usu\u00C3\u00A1rio. */
    public var idUsuario: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["token"] = self.token
        nillableDictionary["idAplicacaoMobile"] = self.idAplicacaoMobile
        nillableDictionary["idUsuario"] = self.idUsuario
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
