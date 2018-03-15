//
// OportunidadeResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Representa\u00E7\u00E3o da resposta do recurso Oportunidades */
public class OportunidadeResponse: JSONEncodable {

    /** C\u00F3digo identificador da oportunidade */
    public var id: Int?
    /** C\u00F3digo identificador do tipo oportunidade */
    public var idTipoOportunidade: Int?
    /** C\u00F3digo identificador do status oportunidade */
    public var idStatusOportunidade: Int?
    /** Data cadastro da oportunidade. */
    public var dataCadastro: String?
    /** Data atualiza\u00E7\u00E3o da oportunidade. */
    public var dataAtualizacao: String?
    /** N\u00FAmero receita federal do cliente ao qual ser\u00E1 ofertada a oportunidade */
    public var numeroReceitaFederal: String?
    /** In\u00EDcio da vig\u00EAncia da oportunidade */
    public var dataInicioVigencia: String?
    /** Fim da vig\u00EAncia da oportunidade */
    public var dataFimVigencia: String?
    /** Flag de verifica\u00E7\u00E3o se a oportunidade est\u00E1 ativa */
    public var flagAtivo: Bool?
    /** Lista de detalhes da oportunidade */
    public var detalhes: [DetalheOportunidadeResponse]?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["idTipoOportunidade"] = self.idTipoOportunidade
        nillableDictionary["idStatusOportunidade"] = self.idStatusOportunidade
        nillableDictionary["dataCadastro"] = self.dataCadastro
        nillableDictionary["dataAtualizacao"] = self.dataAtualizacao
        nillableDictionary["numeroReceitaFederal"] = self.numeroReceitaFederal
        nillableDictionary["dataInicioVigencia"] = self.dataInicioVigencia
        nillableDictionary["dataFimVigencia"] = self.dataFimVigencia
        nillableDictionary["flagAtivo"] = self.flagAtivo
        nillableDictionary["detalhes"] = self.detalhes?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
