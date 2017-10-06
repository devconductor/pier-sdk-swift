//
// CodigoSegurancaResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Objeto codigo seguranca */
public class CodigoSegurancaResponse: JSONEncodable {

    /** C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do c\u00C3\u00B3digo de seguranca (id). */
    public var id: Int?
    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Emissor (idEmissor). */
    public var idEmissor: Int?
    /** Apresenta o Modo de Envio do C\u00C3\u00B3digo de Seguran\u00C3\u00A7a. */
    public var modoEnvio: String?
    /** Apresenta o contato do c\u00C3\u00B3digo de seguran\u00C3\u00A7a. */
    public var contato: String?
    /** Apresenta o status do c\u00C3\u00B3digo de seguran\u00C3\u00A7a. */
    public var ativo: Bool?
    /** Apresenta a data de validade do c\u00C3\u00B3digo de seguran\u00C3\u00A7a gerado. */
    public var dataValidade: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["idEmissor"] = self.idEmissor
        nillableDictionary["modoEnvio"] = self.modoEnvio
        nillableDictionary["contato"] = self.contato
        nillableDictionary["ativo"] = self.ativo
        nillableDictionary["dataValidade"] = self.dataValidade
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}