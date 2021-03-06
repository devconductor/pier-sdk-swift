//
// ValidaSenhaCartaoResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{valida_senha_cartao_response_description}}} */
public class ValidaSenhaCartaoResponse: JSONEncodable {

    /** {{{valida_senha_cartao_response_mensagem_value}}} */
    public var mensagem: String?
    /** {{{valida_senha_cartao_response_id_status_cartao_value}}} */
    public var idStatusCartao: Int?
    /** {{{valida_senha_cartao_response_status_cartao_value}}} */
    public var statusCartao: String?
    /** {{{valida_senha_cartao_response_quantidade_tentativas_value}}} */
    public var quantidadeTentativas: Int?
    /** {{{valida_senha_cartao_response_quantidade_maxima_tentativas_value}}} */
    public var quantidadeMaximaTentativas: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["mensagem"] = self.mensagem
        nillableDictionary["idStatusCartao"] = self.idStatusCartao
        nillableDictionary["statusCartao"] = self.statusCartao
        nillableDictionary["quantidadeTentativas"] = self.quantidadeTentativas
        nillableDictionary["quantidadeMaximaTentativas"] = self.quantidadeMaximaTentativas
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
