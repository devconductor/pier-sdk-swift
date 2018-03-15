//
// DetalheOportunidadeUpdate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Objeto DetalheOportunidade */
public class DetalheOportunidadeUpdate: JSONEncodable {

    /** C\u00F3digo identificador do detalhe */
    public var id: Int?
    /** Nome do conte\u00FAdo */
    public var nomeCampo: String?
    /** Conte\u00FAdo do detalhe */
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
