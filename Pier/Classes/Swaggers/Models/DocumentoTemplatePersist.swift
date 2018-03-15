//
// DocumentoTemplatePersist.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Representa\u00E7\u00E3o do template do documento. */
public class DocumentoTemplatePersist: JSONEncodable {

    /** ID para o Tipo de Template vinculado ao template. */
    public var idTipoTemplate: Int?
    /** Template para o conte\u00FAdo do documento. */
    public var template: String?
    /** Lista de configura\u00E7\u00F5es de integra\u00E7\u00E3o */
    public var integracoes: [ReferenciaIdPersist]?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["idTipoTemplate"] = self.idTipoTemplate
        nillableDictionary["template"] = self.template
        nillableDictionary["integracoes"] = self.integracoes?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
