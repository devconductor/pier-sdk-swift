//
// DadosPortadorRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Par\u00E2metros de requisi\u00E7\u00E3o para valida\u00E7\u00E3o dos dados do portador. */
public class DadosPortadorRequest: JSONEncodable {

    /** N\u00FAmero do cart\u00E3o. */
    public var cartao: String?
    /** N\u00FAmero do CPF. */
    public var cpf: String?
    /** Nome do portador. */
    public var nome: String?
    /** Data de nascimento do portador do cart\u00E3o. */
    public var dataNascimento: String?
    /** CEP da resid\u00EAncia do portador da conta. */
    public var cepResidencial: String?
    /** E-mail do portador do cart\u00E3o. */
    public var email: String?
    /** DDD do n\u00FAmero de telefone do portador do cart\u00E3o. */
    public var ddd: String?
    /** N\u00FAmero do telefone do portador do cart\u00E3o. */
    public var telefone: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["cartao"] = self.cartao
        nillableDictionary["cpf"] = self.cpf
        nillableDictionary["nome"] = self.nome
        nillableDictionary["dataNascimento"] = self.dataNascimento
        nillableDictionary["cepResidencial"] = self.cepResidencial
        nillableDictionary["email"] = self.email
        nillableDictionary["ddd"] = self.ddd
        nillableDictionary["telefone"] = self.telefone
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
