//
// UsuarioTokenResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{usuario_token_resposta_descricao}}} */
public class UsuarioTokenResponse: JSONEncodable {

    /** {{{usuario_token_resposta_ativo_descricao}}} */
    public var ativo: Bool?
    /** {{{usuario_token_resposta_cpf_descricao}}} */
    public var cpf: String?
    /** {{{usuario_token_resposta_data_inclusao_descricao}}} */
    public var dataInclusao: String?
    /** {{{usuario_token_resposta_data_nascimento_descricao}}} */
    public var dataNascimento: String?
    /** {{{usuario_token_resposta_ddd_descricao}}} */
    public var ddd: String?
    /** {{{usuario_token_resposta_email_descricao}}} */
    public var email: String?
    /** {{{usuario_token_resposta_telefone_descricao}}} */
    public var telefone: String?
    /** {{{usuario_token_resposta_token_descricao}}} */
    public var token: String?
    /** {{{usuario_token_resposta_validade_descricao}}} */
    public var validade: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["ativo"] = self.ativo
        nillableDictionary["cpf"] = self.cpf
        nillableDictionary["dataInclusao"] = self.dataInclusao
        nillableDictionary["dataNascimento"] = self.dataNascimento
        nillableDictionary["ddd"] = self.ddd
        nillableDictionary["email"] = self.email
        nillableDictionary["telefone"] = self.telefone
        nillableDictionary["token"] = self.token
        nillableDictionary["validade"] = self.validade
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
