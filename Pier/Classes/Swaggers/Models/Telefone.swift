//
// Telefone.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** ObjetoTelefone */
public class Telefone: JSONEncodable {

    /** C\u00C3\u00B3digo DDD do telefone (id). */
    public var ddd: String?
    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Telefone (id). */
    public var id: Int?
    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Pessoa (id) a qual o telefone pertence. */
    public var idPessoa: Int?
    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Tipo do Telefone (id). */
    public var idTipoTelefone: Int?
    /** N\u00C3\u00BAmero do ramal. */
    public var ramal: String?
    /** Apresenta o Status do Telefone, onde: &#39;0&#39;: Inativo e &#39;1&#39;: Ativo */
    public var status: Int?
    /** N\u00C3\u00BAmero do telefone. */
    public var telefone: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["ddd"] = self.ddd
        nillableDictionary["id"] = self.id
        nillableDictionary["idPessoa"] = self.idPessoa
        nillableDictionary["idTipoTelefone"] = self.idTipoTelefone
        nillableDictionary["ramal"] = self.ramal
        nillableDictionary["status"] = self.status
        nillableDictionary["telefone"] = self.telefone
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}