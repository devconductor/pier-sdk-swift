//
// CampoCodificadoDescricaoResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Objeto Campo Condificado */
public class CampoCodificadoDescricaoResponse: JSONEncodable {

    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da descri\u00C3\u00A7\u00C3\u00A3o. */
    public var codigo: Int?
    /** Descri\u00C3\u00A7\u00C3\u00A3o do campo codificado. */
    public var descricao: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["codigo"] = self.codigo
        nillableDictionary["descricao"] = self.descricao
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}