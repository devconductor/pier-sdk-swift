//
// CartaoPayCadastroResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Resposta da requisi\u00E7\u00E3o para cadastro de cart\u00E3o */
public class CartaoPayCadastroResponse: JSONEncodable {

    public enum Status: String { 
        case Ativo = "ATIVO"
        case Inativo = "INATIVO"
        case Bloqueado = "BLOQUEADO"
    }
    
    /** Id do cart\u00E3o */
    public var id: Int?
    /** N\u00FAmero do cart\u00E3o real criptografado */
    public var numeroCartao: String?
    /** Data de validade do cart\u00E3o */
    public var dataValidadeCartao: String?
    /** Nome impresso no cart\u00E3o criptografado */
    public var nomeImpresso: String?
    /** Identificador do emissor do cart\u00E3o */
    public var idEntidade: Int?
    /** Nome do emissor do cart\u00E3o */
    public var nomeEntidade: String?
    /** Status do cart\u00E3o */
    public var status: Status?
    /** Data de validade da chave do criptograma */
    public var dataValidadeChaveCriptograma: String?
    /** CVV do cart\u00E3o criptografado */
    public var cvv: String?
    /** Chave de gera\u00E7\u00E3o de criptograma criptografada */
    public var chaveCriptograma: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["numeroCartao"] = self.numeroCartao
        nillableDictionary["dataValidadeCartao"] = self.dataValidadeCartao
        nillableDictionary["nomeImpresso"] = self.nomeImpresso
        nillableDictionary["idEntidade"] = self.idEntidade
        nillableDictionary["nomeEntidade"] = self.nomeEntidade
        nillableDictionary["status"] = self.status?.rawValue
        nillableDictionary["dataValidadeChaveCriptograma"] = self.dataValidadeChaveCriptograma
        nillableDictionary["cvv"] = self.cvv
        nillableDictionary["chaveCriptograma"] = self.chaveCriptograma
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
