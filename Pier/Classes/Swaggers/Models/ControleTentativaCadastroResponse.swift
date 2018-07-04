//
// ControleTentativaCadastroResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{controle_tentativa_cadastro_resposta_descricao}}} */
public class ControleTentativaCadastroResponse: JSONEncodable {

    /** {{{controle_tentativa_cadastro_resposta_cpf_descricao}}} */
    public var cpf: String?
    /** {{{controle_tentativa_cadastro_resposta_login_descricao}}} */
    public var login: String?
    /** {{{controle_tentativa_cadastro_resposta_tentativas_descricao}}} */
    public var tentativas: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["cpf"] = self.cpf
        nillableDictionary["login"] = self.login
        nillableDictionary["tentativas"] = self.tentativas
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
