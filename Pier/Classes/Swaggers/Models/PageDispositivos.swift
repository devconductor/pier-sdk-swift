//
// PageDispositivos.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Lista de Dispositivos */
public class PageDispositivos: JSONEncodable {

    public var content: [Dispositivo]?
    public var first: Bool?
    public var firstPage: Bool?
    public var hasContent: Bool?
    public var hasNextPage: Bool?
    public var hasPreviousPage: Bool?
    public var last: Bool?
    public var nextPage: Int?
    public var number: Int?
    public var numberOfElements: Int?
    public var previousPage: Int?
    public var size: Int?
    public var totalElements: Int?
    public var totalPages: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["content"] = self.content?.encodeToJSON()
        nillableDictionary["first"] = self.first
        nillableDictionary["firstPage"] = self.firstPage
        nillableDictionary["hasContent"] = self.hasContent
        nillableDictionary["hasNextPage"] = self.hasNextPage
        nillableDictionary["hasPreviousPage"] = self.hasPreviousPage
        nillableDictionary["last"] = self.last
        nillableDictionary["nextPage"] = self.nextPage
        nillableDictionary["number"] = self.number
        nillableDictionary["numberOfElements"] = self.numberOfElements
        nillableDictionary["previousPage"] = self.previousPage
        nillableDictionary["size"] = self.size
        nillableDictionary["totalElements"] = self.totalElements
        nillableDictionary["totalPages"] = self.totalPages
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
