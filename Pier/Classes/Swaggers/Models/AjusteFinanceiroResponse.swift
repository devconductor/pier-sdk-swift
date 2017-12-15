//
// AjusteFinanceiroResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class AjusteFinanceiroResponse: JSONEncodable {

    /** C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do ajuste (id) */
    public var id: Int?
    /** C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do tipo do ajuste */
    public var idTipoAjuste: Int?
    /** C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (idConta) */
    public var idConta: Int?
    /** Data do ajuste */
    public var dataAjuste: String?
    /** Valor do ajuste */
    public var valor: Double?
    /** Descri\u00C3\u00A7\u00C3\u00A3o do status da autoriza\u00C3\u00A7\u00C3\u00A3o da compra. */
    public var identificadorExterno: String?
    /** Status do ajuste. */
    public var status: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["idTipoAjuste"] = self.idTipoAjuste
        nillableDictionary["idConta"] = self.idConta
        nillableDictionary["dataAjuste"] = self.dataAjuste
        nillableDictionary["valor"] = self.valor
        nillableDictionary["identificadorExterno"] = self.identificadorExterno
        nillableDictionary["status"] = self.status
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}