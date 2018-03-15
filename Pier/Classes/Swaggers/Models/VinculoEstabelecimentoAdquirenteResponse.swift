//
// VinculoEstabelecimentoAdquirenteResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Objeto de resposta do VinculoEstabelecimentoAdquirente */
public class VinculoEstabelecimentoAdquirenteResponse: JSONEncodable {

    /** C\u00F3digo de Identifica\u00E7\u00E3o do VinculoEstabelecimentoAdquirente (id). */
    public var id: Int?
    /** C\u00F3digo de Identifica\u00E7\u00E3o do Estabelecimento (id). */
    public var idEstabelecimento: Int?
    /** C\u00F3digo de Identifica\u00E7\u00E3o do Adquirente (id). */
    public var idAdquirente: Int?
    /** C\u00F3digo do v\u00EDnculo entre o estabelecimento e o adquirente. */
    public var codigoEstabelecimentoAdquirente: String?
    /** Data de cadastro do v\u00EDnculo. */
    public var dataHoraCadastro: String?
    /** Data de cadastro do v\u00EDnculo. */
    public var mensagem: String?
    /** Data de cadastro do v\u00EDnculo. */
    public var status: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["idEstabelecimento"] = self.idEstabelecimento
        nillableDictionary["idAdquirente"] = self.idAdquirente
        nillableDictionary["codigoEstabelecimentoAdquirente"] = self.codigoEstabelecimentoAdquirente
        nillableDictionary["dataHoraCadastro"] = self.dataHoraCadastro
        nillableDictionary["mensagem"] = self.mensagem
        nillableDictionary["status"] = self.status
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
