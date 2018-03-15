//
// TipoDebitoRecorrenteResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Representa\u00E7\u00E3o da resposta do recurso de Tipo Debito Recorrente */
public class TipoDebitoRecorrenteResponse: JSONEncodable {

    /** C\u00F3digo de identifica\u00E7\u00E3o do tipo de d\u00E9bito recorrente (id). */
    public var id: Int?
    /** Descri\u00E7\u00E3o do tipo de d\u00E9bito recorrente. */
    public var descricao: String?
    /** Valor do tipo de d\u00E9bito recorrente. */
    public var valor: Double?
    /** Flag que identifica se o tipo d\u00E9bito recorrente est\u00E1 ativo. */
    public var flagAtivo: Bool?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["descricao"] = self.descricao
        nillableDictionary["valor"] = self.valor
        nillableDictionary["flagAtivo"] = self.flagAtivo
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
