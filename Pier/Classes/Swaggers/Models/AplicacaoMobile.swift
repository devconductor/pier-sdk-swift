//
// AplicacaoMobile.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Aplicacao Mobile */
public class AplicacaoMobile: JSONEncodable {

    /** Apresenta o identificador da aplicacao. */
    public var id: Int?
    /** Apresenta o identificador da plataforma. */
    public var idPlataformaMobile: Int?
    /** Apresenta o identificador do emissor. */
    public var idEmissor: Int?
    /** Apresenta o token da aplicacao. */
    public var token: String?
    /** Apresenta a cor da mensagem da aplicacao. */
    public var cor: String?
    /** Apresenta o som da mensagem da aplicacao */
    public var som: String?
    /** Apresenta o icone da mensagem da aplica\u00C3\u00A7\u00C3\u00A3o. */
    public var icone: String?
    /** Apresenta o certificado da aplica\u00C3\u00A7\u00C3\u00A3o. */
    public var certificadoBase64: String?
    /** Apresenta a senha da aplica\u00C3\u00A7\u00C3\u00A3o. */
    public var senha: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["idPlataformaMobile"] = self.idPlataformaMobile
        nillableDictionary["idEmissor"] = self.idEmissor
        nillableDictionary["token"] = self.token
        nillableDictionary["cor"] = self.cor
        nillableDictionary["som"] = self.som
        nillableDictionary["icone"] = self.icone
        nillableDictionary["certificadoBase64"] = self.certificadoBase64
        nillableDictionary["senha"] = self.senha
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
