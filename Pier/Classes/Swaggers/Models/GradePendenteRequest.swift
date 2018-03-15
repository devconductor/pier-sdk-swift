//
// GradePendenteRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class GradePendenteRequest: JSONEncodable {

    /** C\u00F3digo identificador da conta. */
    public var idConta: Int?
    /** Data do ajuste no formato yyyy-MM-dd. */
    public var dataBase: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["idConta"] = self.idConta
        nillableDictionary["dataBase"] = self.dataBase
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
