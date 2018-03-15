//
// TipoOportunidadeAUDResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Representa\u00E7\u00E3o da resposta do recurso TipoOportunidadeAUD */
public class TipoOportunidadeAUDResponse: JSONEncodable {

    /** C\u00F3digo identificador da auditoria dos tipos oportunidades */
    public var rev: Int?
    /** C\u00F3digo que representa o tipo de a\u00E7\u00E3o realizada no recurso de tipos oportunidades */
    public var revType: Int?
    /** Data da a\u00E7\u00E3o realizada no recurso de tipos oportunidades */
    public var revDate: String?
    /** C\u00F3digo identificador do tipo oportunidade no qual foi realizado a a\u00E7\u00E3o */
    public var id: Int?
    /** Descri\u00E7\u00E3o do tipo oportunidade no qual foi realizado a a\u00E7\u00E3o */
    public var descricao: String?
    /** Atributo que representa se o tipo oportunidade est\u00E1 ativo */
    public var flagAtivo: Bool?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["rev"] = self.rev
        nillableDictionary["revType"] = self.revType
        nillableDictionary["revDate"] = self.revDate
        nillableDictionary["id"] = self.id
        nillableDictionary["descricao"] = self.descricao
        nillableDictionary["flagAtivo"] = self.flagAtivo
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
