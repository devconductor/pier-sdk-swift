//
// CdtDetalheOportunidadeAUD.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class CdtDetalheOportunidadeAUD: JSONEncodable {

    public var conteudo: String?
    public var id: Int?
    public var idOportunidade: Int?
    public var nomeCampo: String?
    public var rev: Int?
    public var revDate: NSDate?
    public var revOportunidade: Int?
    public var revType: Int?
    public var revUser: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["conteudo"] = self.conteudo
        nillableDictionary["id"] = self.id
        nillableDictionary["idOportunidade"] = self.idOportunidade
        nillableDictionary["nomeCampo"] = self.nomeCampo
        nillableDictionary["rev"] = self.rev
        nillableDictionary["revDate"] = self.revDate?.encodeToJSON()
        nillableDictionary["revOportunidade"] = self.revOportunidade
        nillableDictionary["revType"] = self.revType
        nillableDictionary["revUser"] = self.revUser
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
