//
// OrigemComercial.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Origem Comercial */
public class OrigemComercial: JSONEncodable {

    /** Id da origem comercial */
    public var id: Int?
    /** Nome da origem comercial */
    public var nome: String?
    /** Status da origem comercial */
    public var status: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["nome"] = self.nome
        nillableDictionary["status"] = self.status
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}