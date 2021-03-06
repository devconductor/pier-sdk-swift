//
// TerminalResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{terminal_response_description}}} */
public class TerminalResponse: JSONEncodable {

    /** {{{terminal_response_id_value}}} */
    public var id: Int?
    /** {{{terminal_response_terminal_value}}} */
    public var terminal: String?
    /** {{{terminal_response_numero_estabelecimento_value}}} */
    public var numeroEstabelecimento: Int?
    /** {{{terminal_response_id_estabelecimento_value}}} */
    public var idEstabelecimento: Int?
    /** {{{terminal_response_flag_consulta_extrato_value}}} */
    public var flagConsultaExtrato: Bool?
    /** {{{terminal_response_flag_terminal_virtual_value}}} */
    public var flagTerminalVirtual: Bool?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["terminal"] = self.terminal
        nillableDictionary["numeroEstabelecimento"] = self.numeroEstabelecimento
        nillableDictionary["idEstabelecimento"] = self.idEstabelecimento
        nillableDictionary["flagConsultaExtrato"] = self.flagConsultaExtrato
        nillableDictionary["flagTerminalVirtual"] = self.flagTerminalVirtual
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
