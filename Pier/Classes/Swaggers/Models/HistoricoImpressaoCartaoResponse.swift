//
// HistoricoImpressaoCartaoResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Hist\u00F3rico Impress\u00E3o Cart\u00E3o */
public class HistoricoImpressaoCartaoResponse: JSONEncodable {

    /** C\u00F3digo de Identifica\u00E7\u00E3o do Hist\u00F3rico de Impress\u00E3o Avulsa de Cart\u00F5es (id). */
    public var id: Int?
    /** C\u00F3digo de Identifica\u00E7\u00E3o do Cart\u00E3o (id). */
    public var idCartao: Int?
    /** C\u00F3digo de Identifica\u00E7\u00E3o do Status de Impress\u00E3o do Cart\u00E3o (id). */
    public var idStatusImpressaoCartao: Int?
    /** Apresenta uma mensagem que descreve a etapa do processo de impress\u00E3o do cart\u00E3o que fora realizado. */
    public var mensagemHistorico: String?
    /** Apresenta a data que o registro de Hist\u00F3rico de Impress\u00E3o de um Cart\u00E3o fora inserido. */
    public var dataHistorico: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["idCartao"] = self.idCartao
        nillableDictionary["idStatusImpressaoCartao"] = self.idStatusImpressaoCartao
        nillableDictionary["mensagemHistorico"] = self.mensagemHistorico
        nillableDictionary["dataHistorico"] = self.dataHistorico
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
