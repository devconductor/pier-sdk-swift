//
// BinChavePersist.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class BinChavePersist: JSONEncodable {

    public var chave: String?
    public var checkValue: String?
    public var flagDescriptografado: Bool?
    public var idBin: Int?
    public var idTipoChave: Int?
    public var label: String?
    public var validade: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["chave"] = self.chave
        nillableDictionary["checkValue"] = self.checkValue
        nillableDictionary["flagDescriptografado"] = self.flagDescriptografado
        nillableDictionary["idBin"] = self.idBin
        nillableDictionary["idTipoChave"] = self.idTipoChave
        nillableDictionary["label"] = self.label
        nillableDictionary["validade"] = self.validade
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
