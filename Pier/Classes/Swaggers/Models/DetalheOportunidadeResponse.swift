//
// DetalheOportunidadeResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Representa\u00C3\u00A7\u00C3\u00A3o do detalhe da resposta do recurso Oportunidades */
public class DetalheOportunidadeResponse: JSONEncodable {

    /** C\u00C3\u00B3digo identificador do detalhe */
    public var id: Int?
    /** Nome do conte\u00C3\u00BAdo */
    public var nomeCampo: String?
    /** Conte\u00C3\u00BAdo do detalhe */
    public var conteudo: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["nomeCampo"] = self.nomeCampo
        nillableDictionary["conteudo"] = self.conteudo
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
