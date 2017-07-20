//
// ValidaCartaoResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Objeto de resposta para a valida\u00C3\u00A7\u00C3\u00A3o de cart\u00C3\u00A3o */
public class ValidaCartaoResponse: JSONEncodable {

    /** Descri\u00C3\u00A7\u00C3\u00A3o do status do cart\u00C3\u00A3o */
    public var idStatusCartao: Int?
    /** Descri\u00C3\u00A7\u00C3\u00A3o do status do cart\u00C3\u00A3o */
    public var statusCartao: String?
    /** Descri\u00C3\u00A7\u00C3\u00A3o do status da conta */
    public var idStatusConta: Int?
    /** Descri\u00C3\u00A7\u00C3\u00A3o do status da conta */
    public var statusConta: String?
    /** C\u00C3\u00B3digo identificador da conta. */
    public var idConta: Int?
    /** N\u00C3\u00BAmero da ag\u00C3\u00AAncia. */
    public var numeroAgencia: Int?
    /** N\u00C3\u00BAmero da conta corrente. */
    public var numeroContaCorrente: String?
    /** Criptograma de resposta */
    public var criptogramaResposta: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["idStatusCartao"] = self.idStatusCartao
        nillableDictionary["statusCartao"] = self.statusCartao
        nillableDictionary["idStatusConta"] = self.idStatusConta
        nillableDictionary["statusConta"] = self.statusConta
        nillableDictionary["idConta"] = self.idConta
        nillableDictionary["numeroAgencia"] = self.numeroAgencia
        nillableDictionary["numeroContaCorrente"] = self.numeroContaCorrente
        nillableDictionary["criptogramaResposta"] = self.criptogramaResposta
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}