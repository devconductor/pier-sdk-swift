//
// TerminalResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** ObjetoTerminal */
public class TerminalResponse: JSONEncodable {

    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Terminal (id). */
    public var id: Int?
    /** N\u00C3\u00BAmero \u00C3\u00BAnico do terminal. */
    public var terminal: String?
    /** N\u00C3\u00BAmero do estabelecimento a qual o terminal pertence. */
    public var numeroEstabelecimento: Int?
    /** N\u00C3\u00BAmero de identifica\u00C3\u00A7\u00C3\u00A3o do estabelecimento a qual o terminal pertence. */
    public var idEstabelecimento: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["terminal"] = self.terminal
        nillableDictionary["numeroEstabelecimento"] = self.numeroEstabelecimento
        nillableDictionary["idEstabelecimento"] = self.idEstabelecimento
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}