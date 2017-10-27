//
// RefenciaComercialAprovadoPersist.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** RefenciaAprovadoPersist */
public class RefenciaComercialAprovadoPersist: JSONEncodable {

    /** Apresenta o nome completo da raz\u00C3\u00A3o social da refer\u00C3\u00AAncia comercial (nome empresarial) */
    public var razaoSocial: String?
    /** Nome do respons\u00C3\u00A1vel pela refer\u00C3\u00AAncia comercial */
    public var nomeContrato: String?
    /** DDD do contato da refer\u00C3\u00AAncia comercial */
    public var ddd: String?
    /** N\u00C3\u00BAmero de contato da refer\u00C3\u00AAncia comercial */
    public var telefone: String?
    /** E-mail de contato da refer\u00C3\u00AAncia comercial */
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