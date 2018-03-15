//
// TipoResolucaoResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Objeto de resposta de Tipo Resolu\u00E7\u00E3o */
public class TipoResolucaoResponse: JSONEncodable {

    /** C\u00F3digo de identifica\u00E7\u00E3o do tipo de resolu\u00E7\u00E3o */
    public var id: Int?
    /** Descri\u00E7\u00E3o do tipo de resolu\u00E7\u00E3o */
    public var descricao: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["descricao"] = self.descricao
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
