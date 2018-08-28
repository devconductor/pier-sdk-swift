//
// ContestarCompraRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{contestar_compra_request_description}}} */
public class ContestarCompraRequest: JSONEncodable {

    public var codigoChargebackId: Int?
    public var compras: [Int]?
    public var enviarDocumentos: Bool?
    public var mensagem: String?
    public var mensagemCSLight: String?
    public var mensagemChargeback: String?
    public var statusId: Int?
    public var tipoContestacaoId: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["codigoChargebackId"] = self.codigoChargebackId
        nillableDictionary["compras"] = self.compras?.encodeToJSON()
        nillableDictionary["enviarDocumentos"] = self.enviarDocumentos
        nillableDictionary["mensagem"] = self.mensagem
        nillableDictionary["mensagemCSLight"] = self.mensagemCSLight
        nillableDictionary["mensagemChargeback"] = self.mensagemChargeback
        nillableDictionary["statusId"] = self.statusId
        nillableDictionary["tipoContestacaoId"] = self.tipoContestacaoId
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
