//
// UsuarioLdapPersist.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class UsuarioLdapPersist: JSONEncodable {

    public var cpf: String?
    public var email: String?
    public var idEmissor: Int?
    public var login: String?
    public var nome: String?
    public var perfis: [ReferenciaIdPersist]?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["cpf"] = self.cpf
        nillableDictionary["email"] = self.email
        nillableDictionary["idEmissor"] = self.idEmissor
        nillableDictionary["login"] = self.login
        nillableDictionary["nome"] = self.nome
        nillableDictionary["perfis"] = self.perfis?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
