//
// CancelarCartaoResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class CancelarCartaoResponse: JSONEncodable {

    public var codigoRetorno: Int?
    public var descricaoRetorno: String?
    public var idCartao: Int?
    public var idConta: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["codigoRetorno"] = self.codigoRetorno
        nillableDictionary["descricaoRetorno"] = self.descricaoRetorno
        nillableDictionary["idCartao"] = self.idCartao
        nillableDictionary["idConta"] = self.idConta
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
