//
// ArquivoAjusteLoteResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{arquivo_ajuste_lote_response_description}}} */
public class ArquivoAjusteLoteResponse: JSONEncodable {

    public var dataProcessamento: NSDate?
    /** {{{arquivo_ajuste_lote_response_id_value}}} */
    public var id: Int?
    /** {{{arquivo_ajuste_lote_response_length_value}}} */
    public var length: Int?
    /** {{{arquivo_ajuste_lote_response_lines_value}}} */
    public var lines: Int?
    /** {{{arquivo_ajuste_lote_response_name_value}}} */
    public var name: String?
    /** {{{arquivo_ajuste_lote_response_status_value}}} */
    public var status: String?
    /** {{{arquivo_ajuste_lote_response_srcName_value}}} */
    public var srcName: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["dataProcessamento"] = self.dataProcessamento?.encodeToJSON()
        nillableDictionary["id"] = self.id
        nillableDictionary["length"] = self.length
        nillableDictionary["lines"] = self.lines
        nillableDictionary["name"] = self.name
        nillableDictionary["status"] = self.status
        nillableDictionary["srcName"] = self.srcName
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}