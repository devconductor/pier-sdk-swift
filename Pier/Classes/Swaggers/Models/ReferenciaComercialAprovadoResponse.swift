//
// ReferenciaComercialAprovadoResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** ReferenciaComercialAprovadoResponse */
public class ReferenciaComercialAprovadoResponse: JSONEncodable {

    /** Apresenta o nome completo da raz\u00E3o social da refer\u00EAncia comercial (nome empresarial) */
    public var razaoSocial: String?
    /** Apresenta o nome do respons\u00E1vel pela refer\u00EAncia comercial */
    public var nomeContrato: String?
    /** Apresenta o DDD do n\u00FAmero de contato da refer\u00EAncia comercial */
    public var ddd: String?
    /** Apresenta o n\u00FAmero de contato da refer\u00EAncia comercial */
    public var telefone: String?
    /** Apresenta o e-mail de contato da refer\u00EAncia comercial */
    public var email: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["razaoSocial"] = self.razaoSocial
        nillableDictionary["nomeContrato"] = self.nomeContrato
        nillableDictionary["ddd"] = self.ddd
        nillableDictionary["telefone"] = self.telefone
        nillableDictionary["email"] = self.email
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
