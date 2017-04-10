//
// ProdutoDetalhesResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** ProdutoDetalhes */
public class ProdutoDetalhesResponse: JSONEncodable {

    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Produto (id). */
    public var id: Int?
    /** Descri\u00C3\u00A7\u00C3\u00A3o do Nome do Produto. */
    public var nome: String?
    /** Representa o Status do Produto, onde: (\&quot;0\&quot;: Inativo), (\&quot;1\&quot;: Ativo). */
    public var status: Int?
    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Fantasia B\u00C3\u00A1sica (id) a qual o produto pertence. */
    public var idFantasiaBasica: Int?
    /** Descri\u00C3\u00A7\u00C3\u00A3o da Fantasia B\u00C3\u00A1sica a qual o produto pertence. */
    public var fantasiaBasica: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["nome"] = self.nome
        nillableDictionary["status"] = self.status
        nillableDictionary["idFantasiaBasica"] = self.idFantasiaBasica
        nillableDictionary["fantasiaBasica"] = self.fantasiaBasica
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}