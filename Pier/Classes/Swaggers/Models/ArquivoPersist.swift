//
// ArquivoPersist.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{arquivo_persist_description}}} */
public class ArquivoPersist: JSONEncodable {

    public enum TipoComunicacao: String { 
        case Soap = "SOAP"
        case Rest = "REST"
    }
    
    /** {{{arquivo_persist_id_tipo_arquivo_value}}} */
    public var idTipoArquivo: Int?
    /** {{{arquivo_persist_arquivo_value}}} */
    public var arquivo: String?
    /** {{{arquivo_persist_nome_value}}} */
    public var nome: String?
    /** {{{arquivo_persist_extensao_value}}} */
    public var extensao: String?
    /** {{{arquivo_persist_tipo_comunicacao_value}}} */
    public var tipoComunicacao: TipoComunicacao?
    /** {{{arquivo_persist_detalhes_value}}} */
    public var detalhes: [ArquivoDetalhesPersist]?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["idTipoArquivo"] = self.idTipoArquivo
        nillableDictionary["arquivo"] = self.arquivo
        nillableDictionary["nome"] = self.nome
        nillableDictionary["extensao"] = self.extensao
        nillableDictionary["tipoComunicacao"] = self.tipoComunicacao?.rawValue
        nillableDictionary["detalhes"] = self.detalhes?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
