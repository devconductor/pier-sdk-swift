//
// DocumentoDetalhadoResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Representa\u00C3\u00A7\u00C3\u00A3o da resposta para o recurso de Documento */
public class DocumentoDetalhadoResponse: JSONEncodable {

    /** ID do Documento. */
    public var id: Int?
    /** ID do Template de Documento associado. */
    public var idTemplateDocumento: Int?
    /** Nome do Documento. */
    public var nome: String?
    /** Representa\u00C3\u00A7\u00C3\u00A3o do documento em Base64. */
    public var documento: String?
    /** Extens\u00C3\u00A3o do Documento. */
    public var extensao: String?
    /** Detalhamento do documento. */
    public var documentoDetalhes: [DocumentoDetalheResponse]?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["idTemplateDocumento"] = self.idTemplateDocumento
        nillableDictionary["nome"] = self.nome
        nillableDictionary["documento"] = self.documento
        nillableDictionary["extensao"] = self.extensao
        nillableDictionary["documentoDetalhes"] = self.documentoDetalhes?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
